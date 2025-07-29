import 'package:flutter/foundation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:symbal_fl/features/auth/data/models/app_user.dart';
import 'package:symbal_fl/features/auth/domain/repositories/auth_repository.dart';

class SupabaseAuthRepository implements AuthRepository {
  SupabaseAuthRepository();
  final SupabaseClient _supabase = Supabase.instance.client;

  @override
  Future<AppUser> createAccount({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      final response = await _supabase.auth.signUp(
        email: email,
        password: password,
        data: {name: name},
      );

      if (response.user == null) {
        throw Exception('Account creation failed: No user returned');
      }

      return _mapSupabaseUserToAppUser(response.user!);
    } on AuthException catch (e) {
      throw _handleAuthException(e);
    } catch (e) {
      throw Exception('Failed to create account: $e');
    }
  }

  @override
  Future<AppUser?> getCurrentUser() async {
    // Get the current user from Supabase
    final user = _supabase.auth.currentUser;

    return user != null ? _mapSupabaseUserToAppUser(user) : null;
  }

  @override
  Future<bool> isAuthenticated() async {
    final session = _supabase.auth.currentSession;

    if (session == null) {
      return false;
    }

    // Check if session is still valid (not expired)
    if (session.expiresAt != null &&
        DateTime.now().millisecondsSinceEpoch > session.expiresAt! * 1000) {
      return false;
    }

    return true;
  }

  @override
  Future<AppUser> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _supabase.auth.signInWithPassword(
        email: email,
        password: password,
      );

      if (response.user == null) {
        throw Exception('Login failed: No user returned');
      }

      return _mapSupabaseUserToAppUser(response.user!);
    } on AuthException catch (e) {
      throw _handleAuthException(e);
    } catch (e) {
      throw Exception('Failed to login: $e');
    }
  }

  @override
  Future<void> logout() {
    return _supabase.auth.signOut();
  }

  @override
  Future<void> resetPassword({required String email}) {
    try {
      return _supabase.auth.resetPasswordForEmail(email);
    } on AuthException catch (e) {
      throw Exception('Failed to reset password: ${e.message}');
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }

  @override
  Future<bool> requiresEmailVerification() async {
    final user = _supabase.auth.currentUser;
    return user != null && user.emailConfirmedAt == null;
  }

  @override
  Future<bool> checkEmailVerification() async {
    try {
      // Refresh the session to get the latest user data
      await _supabase.auth.refreshSession();

      final user = _supabase.auth.currentUser;
      print("Verification called");
      print("User: $user");
      // Return true if user exists and email is confirmed
      return user != null && user.emailConfirmedAt != null;
    } catch (e) {
      if (kDebugMode) {
        print('Error checking email verification: $e');
      }
      return false;
    }
  }

  @override
  Future<void> resendVerificationEmail(String email) async {
    try {
      await _supabase.auth.resend(type: OtpType.signup, email: email);
    } on AuthException catch (e) {
      throw _handleAuthException(e);
    } catch (e) {
      throw Exception('Failed to resend verification email: $e');
    }
  }

  Future<AppUser> _mapSupabaseUserToAppUser(User user) async {
    return AppUser(
      id: user.id,
      email: user.email!,
      createdAt: user.createdAt,
      updatedAt: user.updatedAt,
      name: user.userMetadata!['name'] ?? "",
    );
  }

  /// Maps Supabase AuthException to more user-friendly exceptions
  Exception _handleAuthException(AuthException e) {
    if (kDebugMode) {
      print("Supabase AuthException: ${e.message}");
    }

    switch (e.statusCode) {
      case '400':
        if (e.message.contains('User already registered')) {
          return Exception('An account with this email already exists');
        }
        if (e.message.contains('Password should be at least')) {
          return Exception(
            'Password is too weak. Please choose a stronger password',
          );
        }
        if (e.message.contains('Invalid email')) {
          return Exception('Please enter a valid email address');
        }
        return Exception('Invalid request: ${e.message}');

      case '422':
        if (e.message.contains('email')) {
          return Exception('Invalid email format');
        }
        if (e.message.contains('password')) {
          return Exception('Password does not meet requirements');
        }
        return Exception('Validation error: ${e.message}');

      case '429':
        return Exception(
          'Too many requests. Please wait a moment and try again',
        );

      case '500':
        return Exception('Server error. Please try again later');

      default:
        // Handle specific error messages regardless of status code
        if (e.message.contains('email_address_invalid')) {
          return Exception('Please enter a valid email address');
        }
        if (e.message.contains('weak_password')) {
          return Exception(
            'Password is too weak. Please choose a stronger password',
          );
        }
        if (e.message.contains('signup_disabled')) {
          return Exception('Account registration is currently disabled');
        }
        if (e.message.contains('email_address_not_authorized')) {
          return Exception(
            'This email domain is not authorized for registration',
          );
        }

        return Exception('Authentication error: ${e.message}');
    }
  }
}
