import 'package:go_router/go_router.dart';
import 'package:secondphone_mobile/app/config/app_config.dart';
import 'package:secondphone_mobile/features/auth/presentation/pages/register_page.dart';
import 'package:secondphone_mobile/features/splash/presentation/page/splash_page.dart';

class AppRouter {
  AppRouter._();

  static final GoRouter router = GoRouter(
    initialLocation: '/register',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashPage(title: AppConfig.appName),
      ),
      GoRoute(
        path: '/register',
        builder: (context, state) => const RegisterPage(),
      ),
    ],
  );
}