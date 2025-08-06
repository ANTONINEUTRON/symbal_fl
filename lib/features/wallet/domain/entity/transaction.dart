import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction.freezed.dart';
part 'transaction.g.dart';

enum TransactionType { deposit, withdraw, gameReward, tournamentWin, cashOut, transfer }

@freezed
class Transaction with _$Transaction {
  const factory Transaction({
    required String id,
    required TransactionType type,
    required double amount,
    required String currency,
    required String description,
    required DateTime timestamp,
    String? txHash,
    String? gameId,
  }) = _Transaction;

  const Transaction._();

  bool get isPositive => this.type == TransactionType.deposit || 
                        this.type == TransactionType.gameReward || 
                        this.type == TransactionType.tournamentWin;

  Color get color => isPositive ? Colors.green : Colors.orange;

  IconData get icon {
    switch (this.type) {
      case TransactionType.deposit:
        return Icons.arrow_downward;
      case TransactionType.withdraw:
      case TransactionType.cashOut:
        return Icons.arrow_upward;
      case TransactionType.gameReward:
        return Icons.emoji_events;
      case TransactionType.tournamentWin:
        return Icons.military_tech;
      case TransactionType.transfer:
        return Icons.swap_horiz;
    }
  }

  String get formattedAmount {
    final sign = isPositive ? '+' : '-';
    return '$sign${this.amount.toStringAsFixed(this.amount % 1 == 0 ? 0 : 2)}';
  }

  String get timeAgo {
    final now = DateTime.now();
    final difference = now.difference(this.timestamp);

    if (difference.inMinutes < 1) {
      return 'Just now';
    } else if (difference.inHours < 1) {
      return '${difference.inMinutes} ${difference.inMinutes == 1 ? 'minute' : 'minutes'} ago';
    } else if (difference.inDays < 1) {
      return '${difference.inHours} ${difference.inHours == 1 ? 'hour' : 'hours'} ago';
    } else if (difference.inDays < 7) {
      return '${difference.inDays} ${difference.inDays == 1 ? 'day' : 'days'} ago';
    } else {
      return '${(difference.inDays / 7).floor()} ${(difference.inDays / 7).floor() == 1 ? 'week' : 'weeks'} ago';
    }
  }

  factory Transaction.fromJson(Map<String, dynamic> json) => _$TransactionFromJson(json);
}
