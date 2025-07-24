import 'package:flutter/material.dart';

class SettingsSection extends StatelessWidget {
  const SettingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          SettingsItem(icon: Icons.favorite_outline, title: 'Favourites'),
          SettingsItem(icon: Icons.history_rounded, title: 'History'),
          SettingsItem(icon: Icons.currency_exchange, title: 'Payments'),
          SettingsItem(
            icon: Icons.notifications_outlined,
            title: 'Notifications',
          ),
          SettingsItem(icon: Icons.help_outline, title: 'Help & Support'),
          SettingsItem(icon: Icons.menu_book, title: 'Terms'),
          SettingsItem(icon: Icons.privacy_tip_outlined, title: 'Privacy'),
          SettingsItem(
            icon: Icons.delete_forever_rounded,
            title: 'Delete Account',
            isDestructive: true,
          ),
        ],
      ),
    );
  
  }
}


class SettingsItem extends StatelessWidget {
  const SettingsItem({
    super.key,
    required this.icon,
    required this.title,
    this.isDestructive = false,
  });

  final IconData icon;
  final String title;
  final bool isDestructive;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon, color: isDestructive ? Colors.red : Colors.white),
          title: Text(
            title,
            style: TextStyle(color: isDestructive ? Colors.red : Colors.white),
          ),
          onTap: () {
            Navigator.pop(context);
            // TODO: Implement settings actions
          },
        ),
        Divider(
          color: Colors.grey[700],
          height: 1,
        ),
      ],
    );
  }
}
