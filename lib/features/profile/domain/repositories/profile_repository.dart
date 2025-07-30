
import 'package:symbal_fl/features/profile/data/models/app_user.dart';

abstract class ProfileRepository{
  Future<AppUser> getUserProfile(String userId);

  Future<void> updateProfile(AppUser user);

  Future<void> updateProfilePicture(String imagePath);

  Future<void> deleteAccount();
}