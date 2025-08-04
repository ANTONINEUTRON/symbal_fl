import 'package:flutter/material.dart';

class Balance {
  final String currency;
  final double amount;
  final Widget symbol;

  const Balance({
    required this.currency,
    required this.amount,
    required this.symbol,
  });
}
