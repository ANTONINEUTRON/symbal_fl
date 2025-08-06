import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:solana/base58.dart';
import 'package:solana/solana.dart';
import 'package:solana_mobile_client/solana_mobile_client.dart';
import 'package:symbal_fl/features/wallet/domain/entity/balance.dart';
import 'package:symbal_fl/features/wallet/domain/entity/transaction.dart';
import 'package:symbal_fl/features/wallet/domain/repository/price_repository.dart';
import 'package:symbal_fl/features/wallet/domain/usecases/get_token_prices_usecase.dart';
import 'package:symbal_fl/features/wallet/data/repository/coingecko_price_repository.dart';
import 'package:symbal_fl/features/wallet/ui/cubits/wallet_state.dart';
import 'package:uuid/uuid.dart';

class WalletCubit extends HydratedCubit<WalletState> {
  WalletCubit({
    PriceRepository? priceRepository,
    GetTokenPricesUseCase? getTokenPricesUseCase,
  }) : super(const WalletState()) {
    final repository = priceRepository ?? CoinGeckoPriceRepository();
    _getTokenPricesUseCase = getTokenPricesUseCase ?? GetTokenPricesUseCase(repository);
    _setupSolanaClient();
    
    // Load balances if wallet is connected
    if (state.walletAddress != null) {
      fetchBalances();
    }
    
    // Initialize with dummy transactions for demo
    _initializeDummyTransactions();
  }

  late SolanaClient _solanaClient;
  late GetTokenPricesUseCase _getTokenPricesUseCase;
  final _uuid = const Uuid();

  void _setupSolanaClient({bool isMainnet = true}) {
    _solanaClient = SolanaClient(
      rpcUrl: Uri.parse(
        isMainnet
            ? 'https://api.mainnet-beta.solana.com'
            : 'https://api.devnet.solana.com',
      ),
      websocketUrl: Uri.parse(
        isMainnet
            ? 'wss://api.mainnet-beta.solana.com'
            : 'wss://api.devnet.solana.com',
      ),
    );
  }

  Future<void> connectWallet() async {
    emit(state.copyWith(isLoading: true, error: null));
    
    try {
      final session = await LocalAssociationScenario.create();
      session.startActivityForResult(null).ignore();

      final client = await session.start();
      final result = await client.authorize(
        identityUri: Uri.parse('https://symbal.fun'),
        iconUri: Uri.parse('favicon.png'),
        identityName: 'Symbal',
        cluster: 'mainnet-beta',
      );
      
      if (result != null) {
        final walletAddress = base58encode(result.publicKey.toList());
        
        emit(state.copyWith(
          isLoading: false,
          isConnected: true,
          walletKey: result.publicKey.toString(),
          walletAddress: walletAddress,
          authToken: result.authToken,
        ));
        
        // Fetch balances after successful connection
        await fetchBalances();
        
      } else {
        emit(state.copyWith(
          isLoading: false,
          error: 'Wallet connection was cancelled',
        ));
      }
      
      await session.close();
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        error: 'Failed to connect wallet: $e',
      ));
    }
  }

  Future<void> fetchBalances() async {
    if (state.walletAddress == null) return;
    
    emit(state.copyWith(isLoadingBalances: true));
    
    try {
      final balances = await _getWalletBalances(state.walletAddress!);
      final prices = await _getTokenPricesUseCase(['SOL', 'BONK']);
      
      // Update balances with current prices
      final updatedBalances = balances.map((balance) {
        final priceData = prices[balance.currency];
        final price = priceData?.price ?? 0.0;
        final change24h = priceData?.change24h ?? 0.0;
        return balance.copyWith(
          usdPrice: price,
          usdValue: balance.amount * price,
          priceChange24h: change24h,
        );
      }).toList();
      
      emit(state.copyWith(
        isLoadingBalances: false,
        balances: updatedBalances,
        lastBalanceUpdate: DateTime.now(),
      ));
    } catch (e) {
      emit(state.copyWith(
        isLoadingBalances: false,
        error: 'Failed to fetch balances: $e',
      ));
    }
  }

  Future<List<Balance>> _getWalletBalances(String walletAddress) async {
    try {
      final publicKey = Ed25519HDPublicKey.fromBase58(walletAddress);
      print("Getting balances for wallet: $walletAddress");
      
      // Get SOL balance
      final solBalance = await _solanaClient.rpcClient.getBalance(
        publicKey.toBase58(),
        commitment: Commitment.confirmed,
      );
      final solAmount = solBalance.value / 1e9; 
      
      List<Balance> balances = [
        Balance(
          currency: 'SOL',
          amount: solAmount,
          symbol: 'assets/icons/solana.png',
        ),
        // Add dummy BONK since SPL token fetching is not implemented yet
        Balance(
          currency: 'BONK',
          amount: 125000.0,
          symbol: 'assets/icons/bonk.png',
        ),
      ];
      
      // For now, we'll skip SPL token fetching due to API complexity
      // This can be implemented later with proper token registry
      
      return balances;
    } catch (e) {
      print('Error fetching balances: $e');
      // Return dummy data on error for development
      return [
        Balance(
          currency: 'SOL',
          amount: 15.42,
          symbol: 'assets/icons/solana.png',
        ),
        Balance(
          currency: 'BONK',
          amount: 125000.0,
          symbol: 'assets/icons/bonk.png',
        ),
      ];
    }
  }

  String getFormatedWallet() {
    if (state.walletAddress == null) return "";
    return "${state.walletAddress!.substring(0, 6)}....${state.walletAddress!.substring(state.walletAddress!.length - 4)}";
  }

  Future<void> disconnectWallet() async {
    emit(state.copyWith(isLoading: true));
    
    try {
      if (state.authToken != null) {
        final session = await LocalAssociationScenario.create();
        session.startActivityForResult(null).ignore();

        final client = await session.start();
        await client.deauthorize(authToken: state.authToken!);
        await session.close();
      }
      
      emit(const WalletState()); // Reset to initial state
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        error: 'Failed to disconnect wallet: $e',
      ));
    }
  }

  Future<void> refreshBalances() async {
    if (!state.isConnected) return;
    await fetchBalances();
  }

  void clearError() {
    emit(state.copyWith(error: null));
  }

  // Transaction Management Methods
  void _initializeDummyTransactions() {
    if (state.transactions.isEmpty) {
      final dummyTransactions = [
        Transaction(
          id: _uuid.v4(),
          type: TransactionType.gameReward,
          amount: 125.50,
          currency: 'SYM',
          description: 'Game Reward',
          timestamp: DateTime.now().subtract(const Duration(hours: 2)),
        ),
        Transaction(
          id: _uuid.v4(),
          type: TransactionType.withdraw,
          amount: 15.00,
          currency: 'SOL',
          description: 'Cash Out',
          timestamp: DateTime.now().subtract(const Duration(days: 1)),
        ),
        Transaction(
          id: _uuid.v4(),
          type: TransactionType.tournamentWin,
          amount: 50000,
          currency: 'BONK',
          description: 'Tournament Win',
          timestamp: DateTime.now().subtract(const Duration(days: 3)),
        ),
      ];
      emit(state.copyWith(transactions: dummyTransactions));
    }
  }

  // Add transaction from other parts of the app
  void addTransaction({
    required TransactionType type,
    required double amount,
    required String currency,
    required String description,
    String? txHash,
    String? gameId,
  }) {
    final transaction = Transaction(
      id: _uuid.v4(),
      type: type,
      amount: amount,
      currency: currency,
      description: description,
      timestamp: DateTime.now(),
      txHash: txHash,
      gameId: gameId,
    );

    final updatedTransactions = [transaction, ...state.transactions];
    emit(state.copyWith(transactions: updatedTransactions));
  }

  // Add game reward transaction
  void addGameReward({
    required double amount,
    required String currency,
    required String gameId,
    String? description,
  }) {
    addTransaction(
      type: TransactionType.gameReward,
      amount: amount,
      currency: currency,
      description: description ?? 'Game Reward',
      gameId: gameId,
    );
  }

  // Add tournament win transaction
  void addTournamentWin({
    required double amount,
    required String currency,
    required String gameId,
    String? description,
  }) {
    addTransaction(
      type: TransactionType.tournamentWin,
      amount: amount,
      currency: currency,
      description: description ?? 'Tournament Win',
      gameId: gameId,
    );
  }

  // Add deposit transaction
  void addDeposit({
    required double amount,
    required String currency,
    String? txHash,
    String? description,
  }) {
    addTransaction(
      type: TransactionType.deposit,
      amount: amount,
      currency: currency,
      description: description ?? 'Deposit',
      txHash: txHash,
    );
  }

  // Add withdraw transaction
  void addWithdraw({
    required double amount,
    required String currency,
    String? txHash,
    String? description,
  }) {
    addTransaction(
      type: TransactionType.withdraw,
      amount: amount,
      currency: currency,
      description: description ?? 'Withdraw',
      txHash: txHash,
    );
  }

  // Get recent transactions (limit to last N)
  List<Transaction> getRecentTransactions({int limit = 5}) {
    final transactions = state.transactions;
    transactions.sort((a, b) => b.timestamp.compareTo(a.timestamp));
    return transactions.take(limit).toList();
  }

  // Clear all transactions
  void clearTransactions() {
    emit(state.copyWith(transactions: []));
  }

  // Placeholder methods for future implementation
  Future<void> importWallet() async {
    emit(state.copyWith(error: 'Import wallet feature coming soon'));
  }

  Future<void> createWallet() async {
    emit(state.copyWith(error: 'Create wallet feature coming soon'));
  }

  // HydratedCubit implementation
  @override
  WalletState? fromJson(Map<String, dynamic> json) {
    try {
      return WalletState.fromJson(json);
    } catch (e) {
      print('Error deserializing wallet state: $e');
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(WalletState state) {
    try {
      return state.toJson();
    } catch (e) {
      print('Error serializing wallet state: $e');
      return null;
    }
  }
}
