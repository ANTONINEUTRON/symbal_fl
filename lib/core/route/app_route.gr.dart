// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;
import 'package:symbal_fl/features/auth/ui/pages/auth_page.dart' as _i1;
import 'package:symbal_fl/features/auth/ui/pages/forgot_password.dart' as _i3;
import 'package:symbal_fl/features/auth/ui/pages/reset_password_page.dart'
    as _i9;
import 'package:symbal_fl/features/auth/ui/widgets/verification_email_sent_page.dart'
    as _i10;
import 'package:symbal_fl/features/game/data/models/game_data/game_data_model.dart'
    as _i15;
import 'package:symbal_fl/features/game/ui/pages/create_game_page.dart' as _i2;
import 'package:symbal_fl/features/game/ui/pages/list_games_page.dart' as _i6;
import 'package:symbal_fl/features/game/ui/pages/play_game_page.dart' as _i7;
import 'package:symbal_fl/features/home/ui/pages/home_page.dart' as _i5;
import 'package:symbal_fl/features/profile/ui/pages/history_page.dart' as _i4;
import 'package:symbal_fl/features/profile/ui/pages/profile_page.dart' as _i8;
import 'package:symbal_fl/features/profile/ui/pages/view_profile_page.dart'
    as _i11;
import 'package:symbal_fl/features/wallet/ui/pages/wallet_page.dart' as _i12;

/// generated route for
/// [_i1.AuthPage]
class AuthRoute extends _i13.PageRouteInfo<void> {
  const AuthRoute({List<_i13.PageRouteInfo>? children})
    : super(AuthRoute.name, initialChildren: children);

  static const String name = 'AuthRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i1.AuthPage();
    },
  );
}

/// generated route for
/// [_i2.CreateGamePage]
class CreateGameRoute extends _i13.PageRouteInfo<void> {
  const CreateGameRoute({List<_i13.PageRouteInfo>? children})
    : super(CreateGameRoute.name, initialChildren: children);

  static const String name = 'CreateGameRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i2.CreateGamePage();
    },
  );
}

/// generated route for
/// [_i3.ForgotPasswordPage]
class ForgotPasswordRoute extends _i13.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i13.PageRouteInfo>? children})
    : super(ForgotPasswordRoute.name, initialChildren: children);

  static const String name = 'ForgotPasswordRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i3.ForgotPasswordPage();
    },
  );
}

/// generated route for
/// [_i4.HistoryPage]
class HistoryRoute extends _i13.PageRouteInfo<void> {
  const HistoryRoute({List<_i13.PageRouteInfo>? children})
    : super(HistoryRoute.name, initialChildren: children);

  static const String name = 'HistoryRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i4.HistoryPage();
    },
  );
}

/// generated route for
/// [_i5.HomePage]
class HomeRoute extends _i13.PageRouteInfo<void> {
  const HomeRoute({List<_i13.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i5.HomePage();
    },
  );
}

/// generated route for
/// [_i6.ListGamesPage]
class ListGamesRoute extends _i13.PageRouteInfo<void> {
  const ListGamesRoute({List<_i13.PageRouteInfo>? children})
    : super(ListGamesRoute.name, initialChildren: children);

  static const String name = 'ListGamesRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i6.ListGamesPage();
    },
  );
}

/// generated route for
/// [_i7.PlayGamePage]
class PlayGameRoute extends _i13.PageRouteInfo<PlayGameRouteArgs> {
  PlayGameRoute({
    _i14.Key? key,
    required _i15.GameDataModel gameDataModel,
    List<_i13.PageRouteInfo>? children,
  }) : super(
         PlayGameRoute.name,
         args: PlayGameRouteArgs(key: key, gameDataModel: gameDataModel),
         initialChildren: children,
       );

  static const String name = 'PlayGameRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PlayGameRouteArgs>();
      return _i7.PlayGamePage(key: args.key, gameDataModel: args.gameDataModel);
    },
  );
}

class PlayGameRouteArgs {
  const PlayGameRouteArgs({this.key, required this.gameDataModel});

  final _i14.Key? key;

  final _i15.GameDataModel gameDataModel;

  @override
  String toString() {
    return 'PlayGameRouteArgs{key: $key, gameDataModel: $gameDataModel}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PlayGameRouteArgs) return false;
    return key == other.key && gameDataModel == other.gameDataModel;
  }

  @override
  int get hashCode => key.hashCode ^ gameDataModel.hashCode;
}

/// generated route for
/// [_i8.ProfilePage]
class ProfileRoute extends _i13.PageRouteInfo<void> {
  const ProfileRoute({List<_i13.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i8.ProfilePage();
    },
  );
}

/// generated route for
/// [_i9.ResetPasswordPage]
class ResetPasswordRoute extends _i13.PageRouteInfo<void> {
  const ResetPasswordRoute({List<_i13.PageRouteInfo>? children})
    : super(ResetPasswordRoute.name, initialChildren: children);

  static const String name = 'ResetPasswordRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i9.ResetPasswordPage();
    },
  );
}

/// generated route for
/// [_i10.VerificationEmailSentPage]
class VerificationEmailSentRoute
    extends _i13.PageRouteInfo<VerificationEmailSentRouteArgs> {
  VerificationEmailSentRoute({
    _i14.Key? key,
    String? email,
    List<_i13.PageRouteInfo>? children,
  }) : super(
         VerificationEmailSentRoute.name,
         args: VerificationEmailSentRouteArgs(key: key, email: email),
         initialChildren: children,
       );

  static const String name = 'VerificationEmailSentRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<VerificationEmailSentRouteArgs>(
        orElse: () => const VerificationEmailSentRouteArgs(),
      );
      return _i10.VerificationEmailSentPage(key: args.key, email: args.email);
    },
  );
}

class VerificationEmailSentRouteArgs {
  const VerificationEmailSentRouteArgs({this.key, this.email});

  final _i14.Key? key;

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
/// [_i11.ViewProfilePage]
class ViewProfileRoute extends _i13.PageRouteInfo<void> {
  const ViewProfileRoute({List<_i13.PageRouteInfo>? children})
    : super(ViewProfileRoute.name, initialChildren: children);

  static const String name = 'ViewProfileRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i11.ViewProfilePage();
    },
  );
}

/// generated route for
/// [_i12.WalletPage]
class WalletRoute extends _i13.PageRouteInfo<void> {
  const WalletRoute({List<_i13.PageRouteInfo>? children})
    : super(WalletRoute.name, initialChildren: children);

  static const String name = 'WalletRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i12.WalletPage();
    },
  );
}
