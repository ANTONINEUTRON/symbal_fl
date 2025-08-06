import 'package:symbal_fl/features/wallet/domain/entity/price_data.dart';
import 'package:symbal_fl/features/wallet/domain/repository/price_repository.dart';

class GetTokenPricesUseCase {
  final PriceRepository _priceRepository;

  GetTokenPricesUseCase(this._priceRepository);

  /// Fetches current prices and 24h change for the given tokens
  Future<Map<String, PriceData>> call(List<String> tokens) async {
    return await _priceRepository.getTokenPrices(tokens);
  }
}
