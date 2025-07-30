import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:symbal_fl/features/auth/domain/repositories/auth_repository.dart';
import 'package:symbal_fl/features/profile/data/models/app_user.dart';
import 'package:symbal_fl/features/profile/domain/repositories/profile_repository.dart';
import 'package:symbal_fl/features/profile/ui/cubits/profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit({required this.authRepository, required this.profileRepository})
    : super(ProfileState()) {
    _initialize();
  }

  final AuthRepository authRepository;
  final ProfileRepository profileRepository;

  void _initialize() async {
    var isUserAuthenticated = await authRepository.isAuthenticated();

    if (isUserAuthenticated) {
      fetchSignedInUserProfile();
    }
  }

  Future<void> fetchSignedInUserProfile() async {
    try {
      // get user id
      final user = await authRepository.getCurrentUser();
      print("User ID: ${user?.id}");
      // access profile repository to get user profile
      if (user != null) {
        emit(state.copyWith(user: user, status: ProfileStatus.loaded));
        final profile = await profileRepository.getUserProfile(user.id);
        emit(state.copyWith(user: profile, status: ProfileStatus.loaded));
      } else {
        emit(
          state.copyWith(
            status: ProfileStatus.error,
            errorMessage: "User not signed in",
          ),
        );
      }
    } catch (e) {
      print("Error fetching user profile: $e");
      emit(
        state.copyWith(status: ProfileStatus.error, errorMessage: e.toString()),
      );
    }
  }

  void updateProfile(AppUser user) {
    emit(state.copyWith(user: user));
  }
}
