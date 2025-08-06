import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:symbal_fl/core/extensions/widget_helpers.dart';
import 'package:symbal_fl/features/wallet/ui/cubits/wallet_cubit.dart';
import 'package:symbal_fl/features/game/data/models/game_schema/game_model.dart';

class PaymentBottomSheet extends StatefulWidget {
  final GameModel gameModel;
  final String? tokenUrl;
  final String? updatedTitle;
  final String? updatedDescription;
  final List<String>? updatedTags;
  final VoidCallback onPaymentSuccess;

  const PaymentBottomSheet({
    super.key,
    required this.gameModel,
    this.tokenUrl,
    this.updatedTitle,
    this.updatedDescription,
    this.updatedTags,
    required this.onPaymentSuccess,
  });

  @override
  State<PaymentBottomSheet> createState() => _PaymentBottomSheetState();
}

class _PaymentBottomSheetState extends State<PaymentBottomSheet> {
  String selectedPaymentMethod = 'SOL';
  bool isProcessingPayment = false;

  // Deployment costs
  static const double solCost = 0.01; 
  static const double bonkCost = 60000.0; 

  @override
  Widget build(BuildContext context) {
    final walletState = context.watch<WalletCubit>().state;
    
    final solBalance = context.read<WalletCubit>().solBalance;
    final bonkBalance = context.read<WalletCubit>().bonkBalance;
    
    final canPayWithSol = solBalance >= solCost;
    final canPayWithBonk = bonkBalance >= bonkCost;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Color(0xFF16213E),
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            children: [
              const Icon(Icons.payment, color: Colors.white, size: 18),
              const SizedBox(width: 4),
              const Text(
                'Choose Payment Method',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close, color: Colors.white54),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Text(
            'Pay for Game Deployment',
            style: TextStyle(color: Colors.white70, fontSize: 14),
          ),
          const SizedBox(height: 24),

          // Game Info
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.05),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.white.withOpacity(0.1)),
            ),
            child: Row(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(Icons.games, color: Colors.white),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.updatedTitle ?? widget.gameModel.title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        widget.updatedDescription ?? widget.gameModel.description,
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 12,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),

          // Payment Options
          const Text(
            'Select Payment Currency',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 16),

          // SOL Option
          _buildPaymentOption(
            'SOL',
            'assets/icons/solana.png',
            solCost,
            solBalance,
            canPayWithSol,
            'Solana',
          ),
          const SizedBox(height: 12),

          // BONK Option
          _buildPaymentOption(
            'BONK',
            'assets/icons/bonk.png',
            bonkCost,
            bonkBalance,
            canPayWithBonk,
            'Bonk',
          ),
          const SizedBox(height: 24),

          // Payment Summary
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.05),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Deployment Cost:',
                      style: TextStyle(color: Colors.white70),
                    ),
                    Text(
                      selectedPaymentMethod == 'SOL' 
                          ? '$solCost SOL'
                          : '${bonkCost.toStringAsFixed(0)} BONK',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Your Balance:',
                      style: TextStyle(color: Colors.white70),
                    ),
                    Text(
                      selectedPaymentMethod == 'SOL' 
                          ? '${solBalance.toStringAsFixed(4)} SOL'
                          : '${bonkBalance.toStringAsFixed(0)} BONK',
                      style: TextStyle(
                        color: _canPayWithSelected() ? Colors.green : Colors.red,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),

          // Show error message if any
          if (walletState.error != null) ...[
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.red.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.red.withOpacity(0.3)),
              ),
              child: Row(
                children: [
                  const Icon(Icons.error_outline, color: Colors.red, size: 20),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      walletState.error!,
                      style: const TextStyle(color: Colors.red, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
          ],

          // Deploy Button
          SizedBox(
            width: double.infinity,
            height: 56,
            child: ElevatedButton(
              onPressed: _canPayWithSelected() && !walletState.isLoading
                  ? _processPayment
                  : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: _canPayWithSelected() 
                    ? Theme.of(context).primaryColor
                    : Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: walletState.isLoading
                  ? const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                          ),
                        ),
                        SizedBox(width: 12),
                        Text(
                          'Processing Payment...',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    )
                  : Text(
                      _canPayWithSelected() 
                          ? 'Deploy Game'
                          : 'Insufficient Balance',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildPaymentOption(
    String currency,
    String imagePath,
    double cost,
    double balance,
    bool canPay,
    String fullName,
  ) {
    final isSelected = selectedPaymentMethod == currency;
    
    return GestureDetector(
      onTap: canPay ? () {
        setState(() {
          selectedPaymentMethod = currency;
        });
      } : null,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isSelected 
              ? Theme.of(context).primaryColor.withOpacity(0.2)
              : Colors.white.withOpacity(0.05),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected 
                ? Theme.of(context).primaryColor
                : Colors.white.withOpacity(0.1),
            width: isSelected ? 2 : 1,
          ),
        ),
        child: Row(
          children: [
            // Currency Icon/Image
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  imagePath,
                  width: 24,
                  height: 24,
                  color: canPay ? null : Colors.white54,
                  colorBlendMode: canPay ? null : BlendMode.modulate,
                ),
              ),
            ),
            const SizedBox(width: 16),
            
            // Currency Info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        currency,
                        style: TextStyle(
                          color: canPay ? Colors.white : Colors.white54,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        fullName,
                        style: TextStyle(
                          color: canPay ? Colors.white70 : Colors.white38,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Wrap(
                    children: [
                      Text(
                        'Balance: ${currency == 'SOL' ? balance.toStringAsFixed(4) : balance.toStringAsFixed(0)}',
                        style: TextStyle(
                          color: canPay ? Colors.green : Colors.red,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ).addSpacing(right: 8),
                      Text(
                        'Cost: ${currency == 'SOL' ? cost.toString() : cost.toStringAsFixed(0)} $currency',
                        style: TextStyle(
                          color: canPay ? Colors.white70 : Colors.white38,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            
            // Selection Indicator
            if (isSelected)
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 16,
                ),
              ),
          ],
        ),
      ),
    );
  }

  bool _canPayWithSelected() {
    if (selectedPaymentMethod == 'SOL') {
      return context.read<WalletCubit>().solBalance >= solCost;
    } else {
      return context.read<WalletCubit>().bonkBalance >= bonkCost;
    }
  }

  void _processPayment() async {
    final walletCubit = context.read<WalletCubit>();
    
    try {
      // Prepare transaction data
      final transactionData = {
        'gameId': widget.gameModel.id,
        'gameTitle': widget.updatedTitle ?? widget.gameModel.title,
        'amount': selectedPaymentMethod == 'SOL' ? solCost : bonkCost,
        'currency': selectedPaymentMethod,
        'type': 'game_deployment',
        'tokenUrl': widget.tokenUrl,
      };

      // Call WalletCubit to process the payment
      await walletCubit.processPayment(
        amount: selectedPaymentMethod == 'SOL' ? solCost : bonkCost,
        currency: selectedPaymentMethod,
        description: 'Game Deployment: ${widget.updatedTitle ?? widget.gameModel.title}',
        transactionData: transactionData,
      );

      // If we get here, payment was successful
      Navigator.pop(context);
      widget.onPaymentSuccess();
      
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('✅ Payment successful! Game deployed.'),
          backgroundColor: Colors.green,
        ),
      );
    } catch (e) {
      // Error is already handled by the cubit, just show in snackbar
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('❌ Payment failed: $e'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}
