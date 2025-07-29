// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;
import 'package:symbal_fl/features/auth/ui/pages/auth_page.dart' as _i1;
import 'package:symbal_fl/features/auth/ui/pages/forgot_password.dart' as _i3;
import 'package:symbal_fl/features/auth/ui/pages/reset_password_page.dart'
    as _i8;
import 'package:symbal_fl/features/auth/ui/pages/verify_email_page.dart'
    as _i10;
import 'package:symbal_fl/features/auth/ui/widgets/verification_email_sent_page.dart'
    as _i9;
import 'package:symbal_fl/features/game/ui/pages/create_game_page.dart' as _i2;
import 'package:symbal_fl/features/game/ui/pages/list_games_page.dart' as _i5;
import 'package:symbal_fl/features/game/ui/pages/play_game_page.dart' as _i6;
import 'package:symbal_fl/features/home/ui/pages/home_page.dart' as _i4;
import 'package:symbal_fl/features/profile/ui/pages/profile_page.dart' as _i7;
import 'package:symbal_fl/features/profile/ui/pages/view_profile_page.dart'
    as _i11;

/// generated route for
/// [_i1.AuthPage]
class AuthRoute extends _i12.PageRouteInfo<void> {
  const AuthRoute({List<_i12.PageRouteInfo>? children})
    : super(AuthRoute.name, initialChildren: children);

  static const String name = 'AuthRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i1.AuthPage();
    },
  );
}

/// generated route for
/// [_i2.CreateGamePage]
class CreateGameRoute extends _i12.PageRouteInfo<void> {
  const CreateGameRoute({List<_i12.PageRouteInfo>? children})
    : super(CreateGameRoute.name, initialChildren: children);

  static const String name = 'CreateGameRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i2.CreateGamePage();
    },
  );
}

/// generated route for
/// [_i3.ForgotPasswordPage]
class ForgotPasswordRoute extends _i12.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i12.PageRouteInfo>? children})
    : super(ForgotPasswordRoute.name, initialChildren: children);

  static const String name = 'ForgotPasswordRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i3.ForgotPasswordPage();
    },
  );
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i12.PageRouteInfo<void> {
  const HomeRoute({List<_i12.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i4.HomePage();
    },
  );
}

/// generated route for
/// [_i5.ListGamesPage]
class ListGamesRoute extends _i12.PageRouteInfo<void> {
  const ListGamesRoute({List<_i12.PageRouteInfo>? children})
    : super(ListGamesRoute.name, initialChildren: children);

  static const String name = 'ListGamesRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i5.ListGamesPage();
    },
  );
}

/// generated route for
/// [_i6.PlayGamePage]
class PlayGameRoute extends _i12.PageRouteInfo<void> {
  const PlayGameRoute({List<_i12.PageRouteInfo>? children})
    : super(PlayGameRoute.name, initialChildren: children);

  static const String name = 'PlayGameRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i6.PlayGamePage();
    },
  );
}

/// generated route for
/// [_i7.ProfilePage]
class ProfileRoute extends _i12.PageRouteInfo<void> {
  const ProfileRoute({List<_i12.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i7.ProfilePage();
    },
  );
}

/// generated route for
/// [_i8.ResetPasswordPage]
class ResetPasswordRoute extends _i12.PageRouteInfo<void> {
  const ResetPasswordRoute({List<_i12.PageRouteInfo>? children})
    : super(ResetPasswordRoute.name, initialChildren: children);

  static const String name = 'ResetPasswordRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i8.ResetPasswordPage();
    },
  );
}

/// generated route for
/// [_i9.VerificationEmailSentPage]
class VerificationEmailSentRoute
    extends _i12.PageRouteInfo<VerificationEmailSentRouteArgs> {
  VerificationEmailSentRoute({
    _i13.Key? key,
    String? email,
    List<_i12.PageRouteInfo>? children,
  }) : super(
         VerificationEmailSentRoute.name,
         args: VerificationEmailSentRouteArgs(key: key, email: email),
         initialChildren: children,
       );

  static const String name = 'VerificationEmailSentRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<VerificationEmailSentRouteArgs>(
        orElse: () => const VerificationEmailSentRouteArgs(),
      );
      return _i9.VerificationEmailSentPage(key: args.key, email: args.email);
    },
  );
}

class VerificationEmailSentRouteArgs {
  const VerificationEmailSentRouteArgs({this.key, this.email});

  final _i13.Key? key;

  final String? email;

  @override
  String toString() {
    return 'VerificationEmailSentRouteArgs{key: $key, email: $email}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! VerificationEmailSentRouteArgs) return false;
    return key == other.key && email == other.email;
  }

  @override
  int get hashCode => key.hashCode ^ email.hashCode;
}

/// generated route for
/// [_i10.VerifyEmailPage]
class VerifyEmailRoute extends _i12.PageRouteInfo<void> {
  const VerifyEmailRoute({List<_i12.PageRouteInfo>? children})
    : super(VerifyEmailRoute.name, initialChildren: children);

  static const String name = 'VerifyEmailRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i10.VerifyEmailPage();
    },
  );
}

/// generated route for
/// [_i11.ViewProfilePage]
class ViewProfileRoute extends _i12.PageRouteInfo<void> {
  const ViewProfileRoute({List<_i12.PageRouteInfo>? children})
    : super(ViewProfileRoute.name, initialChildren: children);

  static const String name = 'ViewProfileRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i11.ViewProfilePage();
    },
  );
}
