import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solana/base58.dart';
import 'package:solana/solana.dart';
import 'package:solana_mobile_client/solana_mobile_client.dart';
import 'package:symbal_fl/features/wallet/domain/entity/balance.dart';
import 'package:symbal_fl/features/wallet/ui/cubits/wallet_state.dart';
import 'package:symbal_fl/gen/assets.gen.dart';

class WalletCubit extends Cubit<WalletState> {
  WalletCubit() : super(const WalletState()) {
    setupSolanaClient();
    emit(
      state.copyWith(
        balances: [
          Balance(
            currency: 'SOL',
            amount: 15.42,
            symbol: Assets.icons.solanaPng.image(height: 24, width: 24),
          ),
          Balance(
            currency: 'BONK',
            amount: 125000.0,
            symbol: Assets.icons.bonkPng.image(height: 24, width: 24),
          ),
        ],
      ),
    );
  }

  late SolanaClient _solanaClient;

  void setupSolanaClient({bool isMainnet = true}) async {
    _solanaClient = SolanaClient(
      rpcUrl: Uri.parse(
        isMainnet
            ? 'https://api.mainnet-beta.solana.com'
            : 'https://api.testnet.solana.com',
      ),
      websocketUrl: Uri.parse(
        isMainnet
            ? 'wss://api.mainnet-beta.solana.com'
            : 'wss://api.testnet.solana.com',
      ),
    );
  }

  Future<void> connectWallet() async {
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
      print('Wallet connection result: $result');
      if (result != null) {
        print('Wallet connected: ${result.authToken} ${result.publicKey}');

        emit(
          state.copyWith(
            walletKey: (result.publicKey).toString(),
            walletAddress: base58encode(result.publicKey.toList()),
          ),
        );
        // Save these in your state
      } else {
        print('Wallet connection failed: No result returned');
      }
      await session.close();
    } catch (e) {
      emit(state.copyWith(error: 'Failed to connect wallet: $e'));
    }
  }

  String getFormatedWallet() {
    if (state.walletAddress == null) return "";
    return "${state.walletAddress!.substring(0, 6)}....${state.walletAddress!.substring(state.walletAddress!.length - 4)}";
  }

  void disconnectWallet() async {
    if (state.authToken == null) return;
    final session = await LocalAssociationScenario.create();
    session.startActivityForResult(null).ignore();

    final client = await session.start();
    await client.deauthorize(authToken: state.authToken!);
    emit(WalletState());
    await session.close();
  }
}
