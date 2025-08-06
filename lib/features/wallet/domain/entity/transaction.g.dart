// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionImpl _$$TransactionImplFromJson(Map<String, dynamic> json) =>
    _$TransactionImpl(
      id: json['id'] as String,
      type: $enumDecode(_$TransactionTypeEnumMap, json['type']),
      amount: (json['amount'] as num).toDouble(),
      currency: json['currency'] as String,
      description: json['description'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      txHash: json['txHash'] as String?,
      gameId: json['gameId'] as String?,
    );

Map<String, dynamic> _$$TransactionImplToJson(_$TransactionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$TransactionTypeEnumMap[instance.type]!,
      'amount': instance.amount,
      'currency': instance.currency,
      'description': instance.description,
      'timestamp': instance.timestamp.toIso8601String(),
      'txHash': instance.txHash,
      'gameId': instance.gameId,
    };

const _$TransactionTypeEnumMap = {
  TransactionType.deposit: 'deposit',
  TransactionType.withdraw: 'withdraw',
  TransactionType.gameReward: 'gameReward',
  TransactionType.tournamentWin: 'tournamentWin',
  TransactionType.cashOut: 'cashOut',
  TransactionType.transfer: 'transfer',
};
