import 'package:symbal_fl/features/wallet/domain/entity/balance.dart';

abstract class WalletRepository {
  Future<List<Balance>> fetchBalances(String walletAddress);
  Future<void> fetchTokenPrices();
}