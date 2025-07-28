import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:symbal_fl/features/auth/domain/repositories/auth_repository.dart';
import 'package:symbal_fl/features/auth/ui/cubits/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit({required AuthRepository authRepository}) : super(const AuthState()){
    _authRepository = authRepository;

    _initialize();
  }

late AuthRepository _authRepository;


  Future<void> _initialize() async {
    if (await _authRepository.isAuthenticated()) {
      final user = await _authRepository.getCurrentUser();
      emit(state.copyWith(
        user: user,
        status: AuthStatus.authenticated,
      ));
    } else {
      emit(state.copyWith(status: AuthStatus.unauthenticated));
    }
  }

  void setEmail(String email) {
    emit(state.copyWith(email: email));
  }

  void setPassword(String password) {
    emit(state.copyWith(password: password));
  }

  Future<void> createAccount() async{
    emit(state.copyWith(status: AuthStatus.loading));

    try {
      final appUser = await _authRepository.createAccount(
        email: state.email!,
        password: state.password!,
      );
      print("Created account for user: ${appUser.email}");
      emit(state.copyWith(
        user: appUser,
        status: AuthStatus.authenticated,
        errorMessage: "",
      ));
    } catch (e) {
      emit(state.copyWith(
        status: AuthStatus.error,
        errorMessage: e.toString(),
      ));
      if (kDebugMode) {
        print("Error creating account: ${e.toString()}");
      }
    }
  }

  Future<void> login(String email, String password)async {
    emit(state.copyWith(status: AuthStatus.loading));
    
    try {
      final appUser = await _authRepository.login(
        email: email,
        password: password,
      );

      print("Login successful: ${appUser}");
      emit(state.copyWith(
        user: appUser,
        status: AuthStatus.authenticated,
        errorMessage: "",
      ));
    } catch (e) {
      emit(state.copyWith(
        status: AuthStatus.error,
        errorMessage: e.toString(),
      ));
      if(kDebugMode) {
        print("Login error: ${e.toString()}");
      }
    }
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
      emit(state.copyWith(
        status: AuthStatus.error,
        errorMessage: e.toString(),
      ));
    }
  }

}