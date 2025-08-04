import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:symbal_fl/features/wallet/domain/entity/balance.dart';
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
  // Dummy wallet data - set to null to show connect view
  final String? _walletAddress = null; // Set to null to show connect view
  final String _fullWalletAddress =
      '0x742d35Cc6dF32E8C5B9C8B1A8B6F1e2D7A4C8B3E';

  // Multiple currency balances
  final List<Balance> _balances = [
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
  ];

  @override
  Widget build(BuildContext context) {
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
              walletAddress: _walletAddress!,
              fullWalletAddress: _fullWalletAddress,
              balances: _balances,
            )
          : ConnectWalletView(
              onConnectWallet: _onConnectWallet,
              onImportWallet: _onImportWallet,
              onCreateWallet: _onCreateWallet,
            ),
    );
  }

  void _onConnectWallet() {
    print('Connect Wallet is coming soon');

    
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
