import 'package:flutter/material.dart';

class ConnectWalletView extends StatelessWidget {
  final VoidCallback? onConnectWallet;
  final VoidCallback? onImportWallet;
  final VoidCallback? onCreateWallet;

  const ConnectWalletView({
    super.key,
    this.onConnectWallet,
    this.onImportWallet,
    this.onCreateWallet,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Wallet Icon
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.tertiary.withOpacity(0.1),
              shape: BoxShape.circle,
              border: Border.all(
                color: Theme.of(context).colorScheme.tertiary.withOpacity(0.3),
                width: 2,
              ),
            ),
            child: Icon(
              Icons.account_balance_wallet_outlined,
              size: 60,
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
          const SizedBox(height: 32),
      
          // Subtitle
          Text(
            'To get started with Symbal, you need to connect or create a wallet.',
            style: TextStyle(
              color: Colors.grey[400],
              fontSize: 16,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 48),
      
          // Connect Wallet Button
          _buildWalletActionButton(
            context,
            icon: Icons.link,
            title: 'Connect Wallet',
            subtitle: 'Connect your existing wallet',
            color: Theme.of(context).colorScheme.tertiary,
            onTap: onConnectWallet ?? () => _showComingSoonDialog(context, 'Connect Wallet'),
          ),
          const SizedBox(height: 16),
      
          // Create Wallet Button
          _buildWalletActionButton(
            context,
            icon: Icons.add_circle_outline,
            title: 'Create New Wallet',
            subtitle: 'Create a brand new wallet',
            color: Colors.green,
            onTap: onCreateWallet ?? () => _showComingSoonDialog(context, 'Create Wallet'),
          ),
      
          const SizedBox(height: 16),
          // Import Wallet Button
          _buildWalletActionButton(
            context,
            icon: Icons.file_download_outlined,
            title: 'Import Wallet',
            subtitle: 'Import using seed phrase or private key',
            color: Colors.blue,
            onTap: onImportWallet ?? () => _showComingSoonDialog(context, 'Import Wallet'),
          ),
          const SizedBox(height: 32),
      
      ],
      ),
    );
  }

  Widget _buildWalletActionButton(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: color.withOpacity(0.3),
          ),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: color.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                color: color,
                size: 24,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: color,
              size: 16,
            ),
          ],
        ),
      ),
    );
  }

  void _showComingSoonDialog(BuildContext context, String feature) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.grey[800],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: Row(
          children: [
            Icon(Icons.construction, color: Colors.orange, size: 24),
            const SizedBox(width: 12),
            Text('$feature Coming Soon', style: TextStyle(color: Colors.white)),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '$feature functionality is under development!',
              style: TextStyle(color: Colors.grey[300], fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Text(
              'This feature will be available in the next update.',
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
