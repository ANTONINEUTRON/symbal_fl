import 'package:auto_route/auto_route.dart';
import 'package:symbal_fl/core/route/app_route.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page, initial: true),
    AutoRoute(page: ForgotPasswordRoute.page),
    AutoRoute(page: ResetPasswordRoute.page),
    AutoRoute(page: CreateGameRoute.page),
    AutoRoute(page: PlayGameRoute.page),
    AutoRoute(page: ListGamesRoute.page),
    AutoRoute(page: AuthRoute.page),
    AutoRoute(page: ViewProfileRoute.page),
    AutoRoute(page: VerificationEmailSentRoute.page),
  ];
}
