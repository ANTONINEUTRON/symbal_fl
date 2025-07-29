import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:symbal_fl/features/auth/domain/repositories/auth_repository.dart';
import 'package:symbal_fl/features/auth/ui/cubits/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit({required AuthRepository authRepository})
    : super(const AuthState()) {
    _authRepository = authRepository;

    _initialize();
  }

  late AuthRepository _authRepository;

  Future<void> _initialize() async {
    // await checkEmailVerification();
    if (await _authRepository.isAuthenticated()) {
      print("Authentucaja");
      final user = await _authRepository.getCurrentUser();
      emit(state.copyWith(user: user, status: AuthStatus.authenticated));

      // Optionally, you can start checking verification status here
      checkEmailVerification();
    } else {
      print("Unauthenticated");
      emit(state.copyWith(status: AuthStatus.unauthenticated));
    }
  }

  Future<void> checkEmailVerification() async {
    try {
      emit(state.copyWith(status: AuthStatus.loading));

      // Refresh session to get latest user data
      final isverified = await _authRepository.checkEmailVerification();

      if (isverified) {
        final user = await _authRepository.getCurrentUser();
        emit(
          state.copyWith(
            status: AuthStatus.authenticated,
            user: user,
            errorMessage: "",
          ),
        );
      } else {
        emit(
          state.copyWith(
            status: AuthStatus.emailVerificationRequired,
            errorMessage: "Email not yet verified. Please check your inbox.",
          ),
        );
      }
    } catch (e) {
      emit(
        state.copyWith(
          status: AuthStatus.error,
          errorMessage: "Failed to check verification: ${e.toString()}",
        ),
      );
    }
  }

  void setEmail(String email) {
    emit(state.copyWith(email: email));
  }

  void setName(String name) {
    emit(state.copyWith(name: name));
  }

  void setPassword(String password) {
    emit(state.copyWith(password: password));
  }

  Future<void> createAccount() async {
    emit(state.copyWith(status: AuthStatus.loading));

    try {
      final appUser = await _authRepository.createAccount(
        email: state.email!,
        password: state.password!,
        name: state.name,
      );

      print("Created account for user: ${appUser.email}");

      // For Supabase, typically email verification is required by default
      emit(
        state.copyWith(
          user: appUser,
          status: AuthStatus.emailVerificationRequired,
          errorMessage: "",
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: AuthStatus.error,
          errorMessage: e.toString().replaceFirst('Exception: ', ''),
        ),
      );
      if (kDebugMode) {
        print("Error creating account: ${e.toString()}");
      }
    }
  }

  Future<void> login() async {
    emit(state.copyWith(status: AuthStatus.loading));

    try {
      final appUser = await _authRepository.login(
        email: state.email!,
        password: state.password!,
      );

      print("Login successful: ${appUser}");
      emit(
        state.copyWith(
          user: appUser,
          status: AuthStatus.authenticated,
          errorMessage: "",
        ),
      );
    } catch (e) {
      final errorMessage = e.toString();

      // Check if the error is due to unverified email
      if (_isEmailVerificationError(errorMessage)) {
        emit(
          state.copyWith(
            status: AuthStatus.emailVerificationRequired,
            email: state.email, // Store email for verification page
            errorMessage: "Please verify your email address before logging in.",
          ),
        );
      } else {
        emit(
          state.copyWith(
            status: AuthStatus.error,
            errorMessage: errorMessage.replaceFirst('Exception: ', ''),
          ),
        );
      }
      if (kDebugMode) {
        print("Login error: ${e.toString()}");
      }
    }
  }

  bool _isEmailVerificationError(String errorMessage) {
    final emailVerificationErrors = ['email not confirmed'];

    final lowerError = errorMessage.toLowerCase();
    return emailVerificationErrors.any((error) => lowerError.contains(error));
  }

  Future<void> logout() async {
    emit(state.copyWith(status: AuthStatus.loading));
    await _authRepository.logout();
    emit(state.copyWith(status: AuthStatus.unauthenticated));
  }

  Future<void> resetPassword(String email) async {
    emit(state.copyWith(status: AuthStatus.loading));
    try {
      await _authRepository.resetPassword(email: email);
      emit(state.copyWith(status: AuthStatus.passwordReset));
    } catch (e) {
      emit(
        state.copyWith(status: AuthStatus.error, errorMessage: e.toString()),
      );
    }
  }

  Future<void> resendVerificationEmail() async {
    if (state.email == null) {
      emit(
        state.copyWith(
          status: AuthStatus.error,
          errorMessage: "No email address found",
        ),
      );
      return;
    }

    try {
      await _authRepository.resendVerificationEmail(state.email!);
      emit(state.copyWith(errorMessage: ""));
    } catch (e) {
      emit(
        state.copyWith(
          status: AuthStatus.error,
          errorMessage: "Failed to resend verification email: ${e.toString()}",
        ),
      );
    }
  }

  void clearError() {
    emit(state.copyWith(errorMessage: ""));
  }

  Future<void> resetState() async {
    emit(AuthState());
  }
}
