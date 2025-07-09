import 'package:bookapp/features/home/presentation/view/book_details_view.dart';
import 'package:bookapp/features/home/presentation/view/home_view.dart';
import 'package:bookapp/features/search/presentation/view/search_view.dart';
import 'package:bookapp/features/splashview/presentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kSplashViewPath = '/'; //  '/' start point for my app
  static const kHomeViewPath = '/HomeView';
  static const kBookDetailsViewPath = '/BookDetailsView';
  static const kSearchViewPath = '/SearchView';
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
      GoRoute(
        path: kBookDetailsViewPath,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: kSearchViewPath,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
