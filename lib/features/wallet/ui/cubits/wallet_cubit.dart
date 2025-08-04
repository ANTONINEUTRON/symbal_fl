import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:symbal_fl/features/wallet/ui/cubits/wallet_state.dart';

class WalletCubit extends Cubit<WalletState> {
  WalletCubit() : super(const WalletState());

  void connectWallet(String walletAddress, String fullWalletAddress) {
    emit(state.copyWith(
      walletAddress: walletAddress,
      fullWalletAddress: fullWalletAddress,
    ));
  }
}