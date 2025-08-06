
import 'package:equatable/equatable.dart';
import 'package:symbal_fl/features/wallet/domain/entity/balance.dart';
import 'package:symbal_fl/features/wallet/domain/entity/transaction.dart';

class WalletState extends Equatable {
  const WalletState({
    this.isConnected = false,
    this.isLoading = false,
    this.isLoadingBalances = false,
    this.walletAddress,
    this.walletKey,
    this.authToken,
    this.balances = const [],
    this.transactions = const [],
    this.error,
    this.lastBalanceUpdate,
  });

  final bool isConnected;
  final bool isLoading;
  final bool isLoadingBalances;
  final String? walletAddress;
  final String? walletKey;
  final String? authToken;
  final List<Balance> balances;
  final List<Transaction> transactions;
  final String? error;
  final DateTime? lastBalanceUpdate;

  WalletState copyWith({
    bool? isConnected,
    bool? isLoading,
    bool? isLoadingBalances,
    String? walletAddress,
    String? walletKey,
    String? authToken,
    List<Balance>? balances,
    List<Transaction>? transactions,
    String? error,
    DateTime? lastBalanceUpdate,
  }) {
    return WalletState(
      isConnected: isConnected ?? this.isConnected,
      isLoading: isLoading ?? this.isLoading,
      isLoadingBalances: isLoadingBalances ?? this.isLoadingBalances,
      walletAddress: walletAddress ?? this.walletAddress,
      walletKey: walletKey ?? this.walletKey,
      authToken: authToken ?? this.authToken,
      balances: balances ?? this.balances,
      transactions: transactions ?? this.transactions,
      error: error,
      lastBalanceUpdate: lastBalanceUpdate ?? this.lastBalanceUpdate,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'isConnected': isConnected,
      'walletAddress': walletAddress,
      'walletKey': walletKey,
      'balances': balances.map((b) => b.toJson()).toList(),
      'transactions': transactions.map((t) => t.toJson()).toList(),
      'lastBalanceUpdate': lastBalanceUpdate?.toIso8601String(),
    };
  }

  factory WalletState.fromJson(Map<String, dynamic> json) {
    return WalletState(
      isConnected: json['isConnected'] as bool? ?? false,
      walletAddress: json['walletAddress'] as String?,
      walletKey: json['walletKey'] as String?,
      balances: (json['balances'] as List?)
              ?.map((b) => Balance.fromJson(b as Map<String, dynamic>))
              .toList() ??
          [],
      transactions: (json['transactions'] as List?)
              ?.map((t) => Transaction.fromJson(t as Map<String, dynamic>))
              .toList() ??
          [],
      lastBalanceUpdate: json['lastBalanceUpdate'] != null
          ? DateTime.parse(json['lastBalanceUpdate'] as String)
          : null,
    );
  }

  @override
  List<Object?> get props => [
        isConnected,
        isLoading,
        isLoadingBalances,
        walletAddress,
        walletKey,
        authToken,
        balances,
        transactions,
        error,
        lastBalanceUpdate,
      ];
}