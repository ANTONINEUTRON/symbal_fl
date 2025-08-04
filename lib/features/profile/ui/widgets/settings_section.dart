import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:symbal_fl/core/route/app_route.gr.dart';

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
          SettingsItem(
            icon: Icons.wallet,
            title: 'Manage wallet',
            onTap: () {
              print("Navigating to WalletPage");
              context.router.push(WalletRoute());
            },
          ),
          SettingsItem(icon: Icons.history_rounded, title: 'History',
            onTap: () {
              context.router.push(HistoryRoute());
            },
          ),
          SettingsItem(icon: Icons.currency_exchange, title: 'Payments'),
          SettingsItem(icon: Icons.favorite_outline, title: 'Favourites'),
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
    this.onTap,
  });

  final IconData icon;
  final String title;
  final bool isDestructive;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(
            icon,
            color: isDestructive ? Colors.red : Colors.white,
          ),
          title: Text(
            title,
            style: TextStyle(
              color: isDestructive ? Colors.red : Colors.white,
            ),
          ),
          onTap: onTap,
        ),
        Divider(color: Colors.grey[700], height: 1),
      ],
    );
  }
}
