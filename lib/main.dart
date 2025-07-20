import 'package:bookapp/contant.dart';
import 'package:bookapp/core/utils/api_service.dart';
import 'package:bookapp/core/utils/app_router.dart';
import 'package:bookapp/core/utils/service_locator.dart';
import 'package:bookapp/features/home/data/repos/home_repo_impl.dart';
import 'package:bookapp/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookapp/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const BookShop());
}

class BookShop extends StatelessWidget {
  const BookShop({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (context) => FeaturedBooksCubit(HomeRepoImpl(ApiService(Dio()))),
        ),
        BlocProvider(
          create:
              (context) => NewestBooksCubit(HomeRepoImpl(ApiService(Dio()))),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),

        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
