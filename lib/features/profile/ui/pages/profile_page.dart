import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:symbal_fl/features/profile/ui/cubits/profile_cubit.dart';
import 'package:symbal_fl/features/profile/ui/widgets/profile_sliver_app_bar.dart';
import 'package:symbal_fl/features/profile/ui/widgets/profile_menu_section.dart';
import 'package:symbal_fl/features/profile/ui/widgets/stat_section.dart';

@RoutePage()
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);

    context.read<ProfileCubit>().fetchSignedInUserProfile();
  }

  @override
  Widget build(BuildContext context) {
    var profile = context.watch<ProfileCubit>().state.userProfile;
    
    if (profile == null) {
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      );
    }

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          ProfileSliverAppBar(),
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(height: 24),
                // Stats Row
                StatsSection(),
                const SizedBox(height: 8),
                ProfileMenuSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
