import 'package:flutter/material.dart';

class RetriesCounter extends StatelessWidget {
  const RetriesCounter({
    super.key,
    required this.retriesCount,
    required this.addRetries,
  });
  final int retriesCount;
  final Function addRetries;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.purple.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.purple.withOpacity(0.3)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.bolt, color: Colors.amber, size: 16),
          const SizedBox(width: 4),
          Text(
            '$retriesCount',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          const SizedBox(width: 4),
          GestureDetector(
            onTap: ()=> addRetries(),
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: const BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.add, color: Colors.white, size: 12),
            ),
          ),
        ],
      ),
    );
  }
}
