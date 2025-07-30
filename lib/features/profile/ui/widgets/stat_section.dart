import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:symbal_fl/core/utils/utility_functions.dart';
import 'package:symbal_fl/features/profile/data/models/app_user.dart';
import 'package:symbal_fl/features/profile/ui/cubits/profile_cubit.dart';

class StatsSection extends StatelessWidget {
  const StatsSection({super.key});

  @override
  Widget build(BuildContext context) {
    AppUser? profile = context.read<ProfileCubit>().state.userProfile;
    if (profile == null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          StatItem(label: 'SYM', value: '${UtilityFunctions.formatNumber(profile.symBalance.toInt())}', icon: Icons.monetization_on),
          StatItem(label: 'Follows', value: '${UtilityFunctions.formatNumber(profile.followersCount)}', icon: Icons.games),
          StatItem(label: 'Created', value: '${UtilityFunctions.formatNumber(profile.gamesCreated)}', icon: Icons.build),
        ],
      ),
    );
  }
}

class StatItem extends StatelessWidget {
  const StatItem({
    super.key,
    required this.label,
    required this.value,
    required this.icon,
  });
  final String label;
  final String value;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Theme.of(context).colorScheme.primaryContainer,
          size: 24,
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(color: Colors.grey[400], fontSize: 12),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
