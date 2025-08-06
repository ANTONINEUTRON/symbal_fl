import 'package:flutter/material.dart';
import 'package:symbal_fl/features/wallet/domain/entity/balance.dart';

class BalanceCard extends StatelessWidget {
  final List<Balance> balances;

  const BalanceCard({super.key, required this.balances});

  @override
  Widget build(BuildContext context) {
    double totalValueUSD = balances.fold(
      0.0,
      (sum, balance) => sum + balance.usdValue,
    );

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Colors.purple, Colors.deepPurple, Colors.orange],
          begin: Alignment.topCenter,
          end: Alignment.bottomLeft,
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
                        child: Image.asset(
                          balance.symbol,
                          height: 24,
                          width: 24,
                          errorBuilder: (context, error, stackTrace) {
                            // Fallback to text symbol if image fails to load
                            return Text(
                              balance.currency == 'SOL' ? '☀️' : '🐶',
                              style: const TextStyle(fontSize: 20),
                            );
                          },
                        ),
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
                      Row(
                        spacing: 4,
                        children: [
                          Text(
                            '\$${balance.usdValue.toStringAsFixed(2)}',
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                            ),
                          ),

                          // Show price change if available
                          if (balance.priceChange24h != 0.0)
                            Text(
                              balance.formattedPriceChange,
                              style: TextStyle(
                                color: balance.priceChangeColor,
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                        ],
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
}
