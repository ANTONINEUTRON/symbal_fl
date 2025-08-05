import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:symbal_fl/features/profile/ui/cubits/profile_cubit.dart';
import 'package:symbal_fl/features/wallet/domain/entity/balance.dart';
import 'package:symbal_fl/features/wallet/ui/cubits/wallet_cubit.dart';
import 'package:symbal_fl/features/wallet/ui/widgets/connect_wallet_view.dart';
import 'package:symbal_fl/features/wallet/ui/widgets/connected_wallet_view.dart';
import 'package:symbal_fl/gen/assets.gen.dart';

@RoutePage()
class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {

  @override
  Widget build(BuildContext context) {
    var walletCubit = context.watch<WalletCubit>();
    var walletState = walletCubit.state;

    String? _walletAddress = walletState.walletAddress;
    List<Balance> _balances = walletState.balances;
    
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Manage Wallet',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
      ),
      body: _walletAddress != null
          ? ConnectedWalletView(
              walletAddress: _walletAddress,
              balances: _balances,
            )
          : ConnectWalletView(
              onConnectWallet: walletCubit.connectWallet,
              onImportWallet: _onImportWallet,
              onCreateWallet: _onCreateWallet,
            ),
    );
  }


  void _onImportWallet() {
    // TODO: Implement wallet import logic
    print('Import wallet tapped');
  }

  void _onCreateWallet() {
    // TODO: Implement wallet creation logic
    print('Create wallet tapped');
  }
}
