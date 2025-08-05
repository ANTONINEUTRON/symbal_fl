import 'package:flutter/material.dart';
import 'package:symbal_fl/features/wallet/domain/entity/balance.dart';
import 'package:symbal_fl/features/wallet/ui/widgets/address_card.dart';
import 'package:symbal_fl/features/wallet/ui/widgets/balance_card.dart';
import 'package:symbal_fl/features/wallet/ui/widgets/recent_transactions.dart';

class ConnectedWalletView extends StatelessWidget {
  final String walletAddress;
  final List<Balance> balances;

  const ConnectedWalletView({
    super.key,
    required this.walletAddress,
    required this.balances,
  });

  @override
  Widget build(BuildContext context) {
    
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Balance Card
          BalanceCard(balances: balances),
          const SizedBox(height: 24),

          // Wallet Address Section
          AddressCard(
            walletAddress: walletAddress,
          ),
          const SizedBox(height: 24),

          // Action Buttons
          const ActionButtons(),
          const SizedBox(height: 32),

          // Recent Transactions
          const RecentTransactions(),
        ],
      ),
    );
  }
}

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _buildActionButton(
            context,
            icon: Icons.arrow_downward,
            label: 'Deposit',
            color: Colors.green,
            onTap: () => _showDepositDialog(context),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: _buildActionButton(
            context,
            icon: Icons.arrow_upward,
            label: 'Withdraw',
            color: Colors.orange,
            onTap: () => _showWithdrawDialog(context),
          ),
        ),
      ],
    );
  }

  Widget _buildActionButton(
    BuildContext context, {
    required IconData icon,
    required String label,
    required Color color,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: color.withOpacity(0.3)),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: color.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: color, size: 24),
            ),
            const SizedBox(height: 12),
            Text(
              label,
              style: TextStyle(
                color: color,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showDepositDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.grey[800],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: Row(
          children: [
            Icon(Icons.arrow_downward, color: Colors.green, size: 24),
            const SizedBox(width: 12),
            const Text('Deposit Funds', style: TextStyle(color: Colors.white)),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Deposit functionality will be available soon!',
              style: TextStyle(color: Colors.grey[300], fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Text(
              'You will be able to deposit tokens to your wallet.',
              style: TextStyle(color: Colors.grey[400], fontSize: 14),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              'Got it',
              style: TextStyle(
                color: Theme.of(context).colorScheme.tertiary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showWithdrawDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.grey[800],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: Row(
          children: [
            Icon(Icons.arrow_upward, color: Colors.orange, size: 24),
            const SizedBox(width: 12),
            const Text('Withdraw Funds', style: TextStyle(color: Colors.white)),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Withdraw functionality will be available soon!',
              style: TextStyle(color: Colors.grey[300], fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Text(
              'You will be able to withdraw your tokens to external wallets.',
              style: TextStyle(color: Colors.grey[400], fontSize: 14),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              'Got it',
              style: TextStyle(
                color: Theme.of(context).colorScheme.tertiary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
