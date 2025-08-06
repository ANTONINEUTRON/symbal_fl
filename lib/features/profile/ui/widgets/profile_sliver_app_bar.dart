import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_plus/share_plus.dart';
import 'package:symbal_fl/core/extensions/widget_helpers.dart';
import 'package:symbal_fl/core/utils/utility_functions.dart';
import 'package:symbal_fl/features/app/cubits/app_cubit.dart';
import 'package:symbal_fl/features/auth/ui/cubits/auth_cubit.dart';
import 'package:symbal_fl/features/profile/data/models/app_user.dart';
import 'package:symbal_fl/features/profile/ui/cubits/profile_cubit.dart';
import 'package:symbal_fl/features/profile/ui/widgets/profile_menu_section.dart';
import 'package:symbal_fl/features/wallet/ui/cubits/wallet_cubit.dart';

class ProfileSliverAppBar extends StatefulWidget {
  const ProfileSliverAppBar({super.key, this.isProfileView = false});
  final bool isProfileView;

  @override
  State<ProfileSliverAppBar> createState() => _ProfileSliverAppBarState();
}

class _ProfileSliverAppBarState extends State<ProfileSliverAppBar> {
  @override
  Widget build(BuildContext context) {
    AppUser? profile = context.read<ProfileCubit>().state.userProfile;
    return SliverAppBar(
      expandedHeight: 250,
      pinned: true,
      backgroundColor: Colors.grey[900],
      foregroundColor: Colors.white,
      flexibleSpace: LayoutBuilder(
        builder: (context, constraints) {
          // Calculate the collapse ratio
          final expandedHeight = 250;
          final collapsedHeight =
              kToolbarHeight + MediaQuery.of(context).padding.top;
          final currentHeight = constraints.maxHeight;
          final collapseRatio =
              ((currentHeight - collapsedHeight) /
                      (expandedHeight - collapsedHeight))
                  .clamp(0.0, 1.0);

          return FlexibleSpaceBar(
            centerTitle: false,
            titlePadding: const EdgeInsets.only(left: 16, bottom: 16),
            title: AnimatedOpacity(
              opacity: collapseRatio < 0.3 ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 200),
              child: Text(
                '${profile!.name}',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
            background: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.purple, Colors.pink, Colors.orange],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: _buildProfileHeader(profile: profile),
                ),
              ),
            ),
          );
        },
      ),
      actions: [
        widget.isProfileView
            ? IconButton(
                onPressed: () {
                  _showSettingsBottomSheet();
                },
                icon: Icon(
                  Icons.settings_sharp,
                  color: Theme.of(context).colorScheme.primaryContainer,
                ),
              )
            : IconButton(
                onPressed: () {
                  // _showSettingsBottomSheet();
                  context.read<AuthCubit>().logout();
                },
                icon: Icon(
                  Icons.logout_outlined,
                  color: Theme.of(context).colorScheme.primaryContainer,
                ),
              ),
      ],
    );
  }

  Widget _buildProfileHeader({required AppUser profile}) {
    var walletState = context.watch<WalletCubit>();
    var formatedWallet = walletState.getFormatedWallet();
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Profile Picture with Level Ring
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [
                          Colors.purple,
                          Theme.of(context).colorScheme.secondary,
                          Theme.of(context).colorScheme.tertiary,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Container(
                      margin: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                      ),
                      child: const Icon(
                        Icons.person,
                        size: 60,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.grey[900]!, width: 2),
                      ),
                      child: Text(
                        'LV ${UtilityFunctions.formatNumber(profile.plays)}',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 16),
              // Username and Handle
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Username and Handle
                    Text(
                      '${profile.name}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    Wrap(
                      children: [
                        Text(
                          formatedWallet.isEmpty
                              ? "Wallet not connected"
                              : formatedWallet,
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 12,
                          ),
                        ).addSpacing(bottom: 12),
                        if (formatedWallet.isNotEmpty)
                          GestureDetector(
                            onTap: () {
                              Clipboard.setData(
                                ClipboardData(text: 'qa12a...1aaw'),
                              );
                              context.read<AppCubit>().showAlertMessage(
                                "Wallet address copied!",
                              );
                            },
                            child: Icon(
                              Icons.copy_all_outlined,
                              size: 16,
                              color: Colors.grey[400],
                            ),
                          ),
                      ],
                    ),

                    // Bio
                    Text(
                      profile.bio,
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.grey[300], fontSize: 14),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),

          // Action Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              widget.isProfileView
                  ? _buildActionButton(
                      'Follow ${UtilityFunctions.formatNumber(profile.followersCount)}',
                      Icons.person_add,
                      Colors.purple,
                      () {
                        context.read<AppCubit>().showAlertMessage(
                          'Following...',
                        );
                      },
                    )
                  : _buildActionButton(
                      'Edit Profile',
                      Icons.edit_outlined,
                      Colors.purple,
                      () {
                        context.read<AppCubit>().showAlertMessage(
                          'Editing profile...',
                        );
                      },
                    ),
              _buildActionButton(
                'Share',
                Icons.share_outlined,
                Colors.grey[700]!,
                () {
                  SharePlus.instance.share(
                    ShareParams(
                      text:
                          'Check out my profile on Symbal! https://symbal.fun/${profile.id}',
                      subject: '${profile.name}\'s Symbal Profile',
                    ),
                  );
                },
              ),
            ],
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildActionButton(
    String text,
    IconData icon,
    Color color,
    VoidCallback onPressed,
  ) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, size: 18),
      label: Text(text),
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }

  void _showSettingsBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey[600],
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            const SizedBox(height: 20),
            SettingsItem(
              icon: Icons.report,
              title: 'Report',
              isDestructive: true,
            ),
            SettingsItem(
              icon: Icons.block,
              title: 'Log Out',
              isDestructive: true,
            ),
          ],
        ),
      ),
    );
  }
}
