// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BalanceImpl _$$BalanceImplFromJson(Map<String, dynamic> json) =>
    _$BalanceImpl(
      currency: json['currency'] as String,
      amount: (json['amount'] as num).toDouble(),
      symbol: json['symbol'] as String,
      usdPrice: (json['usdPrice'] as num?)?.toDouble() ?? 0.0,
      usdValue: (json['usdValue'] as num?)?.toDouble() ?? 0.0,
      priceChange24h: (json['priceChange24h'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$BalanceImplToJson(_$BalanceImpl instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'amount': instance.amount,
      'symbol': instance.symbol,
      'usdPrice': instance.usdPrice,
      'usdValue': instance.usdValue,
      'priceChange24h': instance.priceChange24h,
    };
