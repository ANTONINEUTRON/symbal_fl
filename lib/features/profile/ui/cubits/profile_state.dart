import 'package:equatable/equatable.dart';
import 'package:symbal_fl/features/profile/data/models/app_user.dart';

enum ProfileStatus { initial, loading, loaded, error }

class ProfileState extends Equatable {
  const ProfileState({
    this.userProfile,
    this.status = ProfileStatus.initial,
    this.errorMessage,
  });

  final AppUser? userProfile;
  final ProfileStatus status;
  final String? errorMessage;

  @override
  List<Object?> get props => [userProfile, status, errorMessage];

  ProfileState copyWith({
    AppUser? user,
    ProfileStatus? status,
    String? errorMessage,
  }) {
    return ProfileState(
      userProfile: user ?? this.userProfile,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
