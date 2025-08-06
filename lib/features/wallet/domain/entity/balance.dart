import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'balance.freezed.dart';
part 'balance.g.dart';

@freezed
class Balance with _$Balance {
  const factory Balance({
    required String currency,
    required double amount,
    required String symbol, // Asset path to icon
    @Default(0.0) double usdPrice,
    @Default(0.0) double usdValue,
    @Default(0.0) double priceChange24h, // 24-hour price change percentage
  }) = _Balance;

  const Balance._();

  /// Returns true if the 24h price change is positive
  bool get isPriceChangePositive => priceChange24h > 0;

  /// Returns the formatted price change percentage with appropriate sign and color
  String get formattedPriceChange {
    if (priceChange24h == 0.0) return '0.00%';
    final sign = isPriceChangePositive ? '+' : '';
    return '$sign${priceChange24h.toStringAsFixed(2)}%';
  }

  /// Returns the appropriate color for price change display
  Color get priceChangeColor {
    if (priceChange24h > 0) return Colors.green.shade300;
    if (priceChange24h < 0) return Colors.red.shade300;
    return Colors.grey;
  }

  factory Balance.fromJson(Map<String, dynamic> json) => _$BalanceFromJson(json);
}
