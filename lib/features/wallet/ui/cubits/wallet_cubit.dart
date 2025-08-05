import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solana_mobile_client/solana_mobile_client.dart';
import 'package:symbal_fl/features/wallet/domain/entity/balance.dart';
import 'package:symbal_fl/features/wallet/ui/cubits/wallet_state.dart';
import 'package:symbal_fl/gen/assets.gen.dart';

class WalletCubit extends Cubit<WalletState> {
  WalletCubit() : super(const WalletState()) {
    emit(
      state.copyWith(
        balances: [
          Balance(
            currency: 'SOL',
            amount: 15.42,
            symbol: Assets.icons.solanaPng.image(height: 24, width: 24),
          ),
          Balance(
            currency: 'BONK',
            amount: 125000.0,
            symbol: Assets.icons.bonkPng.image(height: 24, width: 24),
          ),
        ],
      ),
    );
  }

  Future<void> connectWallet() async {
    try {
      final session = await LocalAssociationScenario.create();
      await session.startActivityForResult(null);

      final client = await session.start();
      final result = await client.authorize(
        identityUri: Uri.parse('https://symbal.fun'),
        iconUri: Uri.parse('favicon.ico'),
        identityName: 'Symbal',
        cluster: 'mainnet-beta', 
      );
      if (result != null) {
        print('Wallet connected: ${result.authToken} ${result.publicKey}');

        emit(state.copyWith(walletAddress: result.publicKey.toString()));
        // Save these in your state
      }
      await session.close();
    } catch (e) {
      emit(state.copyWith(error: 'Failed to connect wallet: $e'));
    }
  }
}
