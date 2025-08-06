
import 'package:symbal_fl/features/wallet/domain/entity/balance.dart';
import 'package:symbal_fl/features/wallet/domain/repository/wallet_repository.dart';

class WalletRepositoryImpl implements WalletRepository {
  @override
  Future<List<Balance>> fetchBalances(String walletAddress) async {
    // Implementation for fetching balances
    return [];
  }

  @override
  Future<void> fetchTokenPrices() async {
    // Implementation for fetching token prices
  }
}
