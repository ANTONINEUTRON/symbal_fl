import 'package:equatable/equatable.dart';
import 'package:symbal_fl/features/auth/data/models/app_user.dart';


enum AuthStatus {
  initial,
  authenticated,
  unauthenticated,
  loading,
  error, passwordReset,
}

class AuthState extends Equatable {
  final String? email;
  final String? password;
  final AppUser? user;
  final AuthStatus status;
  final String errorMessage;

  const AuthState({
    this.user,
    this.email,
    this.password,
    this.status = AuthStatus.initial,
    this.errorMessage = "",
  });

  @override
  List<Object?> get props => [user, email, password, status, errorMessage];

  AuthState copyWith({
    AppUser? user,
    String? email,
    String? password,
    AuthStatus? status,
    String? errorMessage,
  }) {
    return AuthState(
      user: user ?? this.user,
      email: email ?? this.email,
      password: password ?? this.password,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}