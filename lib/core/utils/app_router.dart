import 'package:bookapp/features/home/presentation/view/home_view.dart';
import 'package:bookapp/features/splashview/presentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kSplashViewPath = '/'; //  '/' start point for my app
  static const kHomeViewPath = '/HomeView';
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: kSplashViewPath,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeViewPath,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
