import 'package:symbal_fl/features/wallet/domain/entity/price_data.dart';

abstract class PriceRepository {
  /// Fetches current prices and 24h change for the given tokens
  Future<Map<String, PriceData>> getTokenPrices(List<String> tokens);
}
