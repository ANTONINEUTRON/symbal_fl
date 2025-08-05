
import 'package:equatable/equatable.dart';
import 'package:symbal_fl/features/wallet/domain/entity/balance.dart';

class WalletState extends Equatable{
  final String? walletAddress;
  final List<Balance> balances;
  final String? error;
  final String? authToken;
  final String? walletKey;

  const WalletState({
    this.walletAddress,
    this.balances = const [],
    this.error,
    this.authToken,
    this.walletKey,
  });

  @override
  List<Object?> get props => [walletAddress, balances, error, authToken, walletKey];

  WalletState copyWith({
    String? walletAddress,
    List<Balance>? balances,
    String? error,
    String? authToken,
    String? walletKey,
  }) {
    return WalletState(
      walletAddress: walletAddress ?? this.walletAddress,
      balances: balances ?? this.balances,
      error: error ?? this.error,
      authToken: authToken ?? this.authToken,
      walletKey: walletKey ?? this.walletKey
    );
  }
}