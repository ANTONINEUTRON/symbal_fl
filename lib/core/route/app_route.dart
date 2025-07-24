import 'package:auto_route/auto_route.dart';
import 'package:symbal_fl/core/route/app_route.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
        ),
        AutoRoute(page: ForgotPasswordRoute.page),
        AutoRoute(page: VerifyEmailRoute.page),
        AutoRoute(page: ResetPasswordRoute.page),
        AutoRoute(page: CreateGameRoute.page),
        AutoRoute(page: PlayGameRoute.page),
        AutoRoute(page: ListGamesRoute.page),
        AutoRoute(page: CreateAccountRoute.page),
        AutoRoute(page: ViewProfileRoute.page)
  ];
}