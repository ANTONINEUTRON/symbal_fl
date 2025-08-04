
import 'package:flutter/material.dart';

class RecentTransactions extends StatelessWidget {
  const RecentTransactions({super.key});

  @override
  Widget build(BuildContext context) {
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
        ...List.generate(3, (index) => _buildTransactionItem(index)),
      ],
    );
  }

  Widget _buildTransactionItem(int index) {
    final List<Map<String, dynamic>> transactions = [
      {
        'type': 'deposit',
        'amount': '+125.50',
        'currency': 'SYM',
        'description': 'Game Reward',
        'time': '2 hours ago',
        'icon': Icons.emoji_events,
        'color': Colors.green,
      },
      {
        'type': 'withdraw',
        'amount': '-15.00',
        'currency': 'SOL',
        'description': 'Cash Out',
        'time': '1 day ago',
        'icon': Icons.arrow_upward,
        'color': Colors.orange,
      },
      {
        'type': 'deposit',
        'amount': '+50000',
        'currency': 'BONK',
        'description': 'Tournament Win',
        'time': '3 days ago',
        'icon': Icons.military_tech,
        'color': Colors.green,
      },
    ];

    final transaction = transactions[index];

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
              color: transaction['color'].withOpacity(0.2),
              shape: BoxShape.circle,
            ),
            child: Icon(
              transaction['icon'],
              color: transaction['color'],
              size: 20,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  transaction['description'],
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  transaction['time'],
                  style: TextStyle(color: Colors.grey[400], fontSize: 12),
                ),
              ],
            ),
          ),
          Text(
            '${transaction['amount']} ${transaction['currency'] ?? 'SYM'}',
            style: TextStyle(
              color: transaction['color'],
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

