import 'package:symbal_fl/features/wallet/domain/entity/price_data.dart';

abstract class PriceRepository {
  Future<Map<String, PriceData>> getTokenPrices(List<String> tokens);
}
