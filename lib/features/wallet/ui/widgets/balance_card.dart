
import 'package:flutter/material.dart';
import 'package:symbal_fl/features/wallet/domain/entity/balance.dart';

class BalanceCard extends StatelessWidget {
  final List<Balance> balances;

  const BalanceCard({super.key, required this.balances});

  @override
  Widget build(BuildContext context) {
    // Calculate total portfolio value in USD equivalent (dummy calculation)
    double totalValueUSD = balances.fold(0.0, (sum, balance) => sum + (balance.amount * _getUSDRate(balance.currency)));
    
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Colors.purple, Colors.pink, Colors.orange],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.purple.withOpacity(0.3),
            blurRadius: 15,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Portfolio ',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  'Active',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            '\$${totalValueUSD.toStringAsFixed(2)} USD',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          
          // Individual currency balances
          ...List.generate(balances.length, (index) {
            final balance = balances[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: balance.symbol,
                      ),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            balance.currency,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        _formatBalance(balance.amount, balance.currency),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        '\$${(balance.amount * _getUSDRate(balance.currency)).toStringAsFixed(2)}',
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }

  String _formatBalance(double balance, String currency) {
    if (currency == 'BONK' && balance >= 1000) {
      return '${(balance / 1000).toStringAsFixed(1)}K $currency';
    }
    return '${balance.toStringAsFixed(2)} $currency';
  }

  double _getUSDRate(String currency) {
    // Dummy USD conversion rates
    switch (currency) {
      case 'SYM':
        return 1.25; // $1.25 per SYM
      case 'SOL':
        return 23.45; // $23.45 per SOL
      case 'BONK':
        return 0.000012; // $0.000012 per BONK
      default:
        return 1.0;
    }
  }
}
