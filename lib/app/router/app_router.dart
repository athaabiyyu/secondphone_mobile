import 'package:go_router/go_router.dart';
import 'package:secondphone_mobile/features/splash/presentation/page/splash_page.dart';

class AppRouter {
  final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashPage(title: 'Second Phone'),
        ),
    ]
  );
}