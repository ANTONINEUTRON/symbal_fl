
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:symbal_fl/features/wallet/domain/entity/transaction.dart';
import 'package:symbal_fl/features/wallet/ui/cubits/wallet_cubit.dart';
import 'package:symbal_fl/features/wallet/ui/cubits/wallet_state.dart';

class RecentTransactions extends StatelessWidget {
  const RecentTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WalletCubit, WalletState>(
      builder: (context, state) {
        final recentTransactions = context.read<WalletCubit>().getRecentTransactions(limit: 3);
        
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Recent Activity',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('View all transactions - Coming Soon!'),
                        backgroundColor: Colors.purple,
                      ),
                    );
                  },
                  child: Text(
                    'View All',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.tertiary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            if (recentTransactions.isEmpty)
              Container(
                padding: const EdgeInsets.all(32),
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Column(
                    children: [
                      Icon(
                        Icons.history,
                        color: Colors.grey[400],
                        size: 48,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'No recent activity',
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            else
              ...recentTransactions.map((transaction) => _buildTransactionItem(transaction)),
          ],
        );
      },
    );
  }

  Widget _buildTransactionItem(Transaction transaction) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[700]!),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: transaction.color.withOpacity(0.2),
              shape: BoxShape.circle,
            ),
            child: Icon(
              transaction.icon,
              color: transaction.color,
              size: 20,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  transaction.description,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  transaction.timeAgo,
                  style: TextStyle(color: Colors.grey[400], fontSize: 12),
                ),
              ],
            ),
          ),
          Text(
            '${transaction.formattedAmount} ${transaction.currency}',
            style: TextStyle(
              color: transaction.color,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

