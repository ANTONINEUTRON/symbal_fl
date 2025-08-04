
import 'package:equatable/equatable.dart';
import 'package:symbal_fl/features/wallet/domain/entity/balance.dart';

class WalletState extends Equatable{
  final String? walletAddress;
  final String? fullWalletAddress;
  final List<Balance> balances;

  const WalletState({
    this.walletAddress,
    this.fullWalletAddress,
    this.balances = const [],
  });

  @override
  List<Object?> get props => [walletAddress, fullWalletAddress, balances];

  WalletState copyWith({
    String? walletAddress,
    String? fullWalletAddress,
    List<Balance>? balances,
  }) {
    return WalletState(
      walletAddress: walletAddress ?? this.walletAddress,
      fullWalletAddress: fullWalletAddress ?? this.fullWalletAddress,
      balances: balances ?? this.balances,
    );
  }
}