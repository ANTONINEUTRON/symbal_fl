import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:symbal_fl/features/profile/data/models/app_user.dart';
import 'package:symbal_fl/features/profile/domain/repositories/profile_repository.dart';


class SupabaseProfileRepository implements ProfileRepository {
  @override
  Future<AppUser> getUserProfile(String userId) async {
    // access supabase db 'app_users' table to get user profile
    final response = await Supabase.instance.client
        .from('app_users')
        .select()
        .eq('id', userId)
        .single();

    return AppUser.fromJson(response);
  }

  @override
  Future<void> updateProfile(AppUser user) {
    // TODO: implement updateProfile
    throw UnimplementedError();
  }

  @override
  Future<void> updateProfilePicture(String imagePath) {
    // TODO: implement updateProfilePicture
    throw UnimplementedError();
  }

  @override
  Future<void> deleteAccount() {
    // TODO: implement deleteAccount
    throw UnimplementedError();
  }
}