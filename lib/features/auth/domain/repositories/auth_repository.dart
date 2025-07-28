

import 'package:symbal_fl/features/auth/data/models/app_user.dart';

/// Abstract repository interface for handling authentication operations.
/// 
/// This repository defines the contract for authentication services,
/// allowing different implementations (e.g., Supabase, Firebase, custom backend).
/// All authentication-related operations should go through this interface
/// to maintain separation of concerns and testability.
abstract class AuthRepository {
  /// Checks if the user is currently authenticated.
  /// 
  /// Returns `true` if there's an active user session, `false` otherwise.
  /// This method should be fast and can be called frequently to check auth state.
  Future<bool> isAuthenticated();

  /// Creates a new user account with email and password.
  /// 
  /// Parameters:
  /// - [email]: The user's email address (must be valid format)
  /// - [password]: The user's password (should meet security requirements)
  /// 
  /// Returns the created [AppUser] object on success.
  /// Throws an exception if account creation fails (e.g., email already exists,
  /// weak password, network error).
  Future<AppUser> createAccount({required String email, required String password});

  /// Authenticates a user with email and password.
  /// 
  /// Parameters:
  /// - [email]: The user's registered email address
  /// - [password]: The user's password
  /// 
  /// Returns the authenticated [AppUser] object on success.
  /// Throws an exception if login fails (e.g., invalid credentials,
  /// account not found, network error).
  Future<AppUser> login({required String email, required String password});

  /// Signs out the current user and clears the session.
  /// 
  /// This method should clear all authentication tokens and user data
  /// from local storage. It should not throw exceptions but handle
  /// errors gracefully.
  Future<void> logout();

  /// Initiates a password reset process for the given email.
  /// 
  /// Parameters:
  /// - [email]: The email address to send the password reset link to
  /// 
  /// This method typically sends a password reset email to the user.
  /// It should not reveal whether the email exists in the system for security.
  /// Throws an exception if the reset process fails (e.g., network error,
  /// rate limiting).
  Future<void> resetPassword({required String email});

  /// Retrieves the currently authenticated user.
  /// 
  /// Returns the current [AppUser] if authenticated, or `null` if no user
  /// is logged in. This method should check the validity of the current
  /// session and return fresh user data.
  Future<AppUser?> getCurrentUser();
}
