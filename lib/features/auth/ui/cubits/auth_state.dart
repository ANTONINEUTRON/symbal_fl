import 'package:equatable/equatable.dart';
import 'package:symbal_fl/features/auth/data/models/app_user.dart';

enum AuthStatus {
  initial,
  authenticated,
  unauthenticated,
  loading,
  error,
  passwordReset,
  emailVerificationRequired,
}

class AuthState extends Equatable {
  final String? email;
  final String? password;
  final AppUser? user;
  final AuthStatus status;
  final String errorMessage;
  final String name;

  const AuthState({
    this.user,
    this.name = '',
    this.email,
    this.password,
    this.status = AuthStatus.initial,
    this.errorMessage = "",
  });

  @override
  List<Object?> get props => [
    user,
    name,
    email,
    password,
    status,
    errorMessage,
  ];

  AuthState copyWith({
    AppUser? user,
    String? email,
    String? name,
    String? password,
    AuthStatus? status,
    String? errorMessage,
  }) {
    return AuthState(
      user: user ?? this.user,
      email: email ?? this.email,
      name: name ?? this.name,
      password: password ?? this.password,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
