import 'package:dio/dio.dart';
import 'package:symbal_fl/features/wallet/domain/entity/price_data.dart';
import 'package:symbal_fl/features/wallet/domain/repository/price_repository.dart';

class CoinGeckoPriceRepository implements PriceRepository {
  final Dio _dio;

  CoinGeckoPriceRepository({Dio? dio}) : _dio = dio ?? Dio() {
    _dio.options.connectTimeout = const Duration(seconds: 10);
    _dio.options.receiveTimeout = const Duration(seconds: 10);
  }

  @override
  Future<Map<String, PriceData>> getTokenPrices(List<String> tokens) async {
    try {
      // Using CoinGecko API for price data
      final response = await _dio.get(
        'https://api.coingecko.com/api/v3/simple/price',
        queryParameters: {
          'ids': tokens.map((token) => _getCoingeckoId(token)).join(','),
          'vs_currencies': 'usd',
          'include_24hr_change': 'true',
        },
      );
      
      Map<String, PriceData> prices = {};
      for (String token in tokens) {
        final geckoId = _getCoingeckoId(token);
        final data = response.data[geckoId];
        if (data != null) {
          prices[token] = PriceData(
            price: (data['usd'] as num).toDouble(),
            change24h: (data['usd_24h_change'] as num?)?.toDouble() ?? 0.0,
          );
        }
      }
      
      return prices;
    } catch (e) {
      print('Error fetching prices: $e');
      return {};
    }
  }

  String _getCoingeckoId(String token) {
    switch (token.toUpperCase()) {
      case 'SOL':
        return 'solana';
      case 'BONK':
        return 'bonk';
      default:
        return token.toLowerCase();
    }
  }
}
