import 'package:bookly/Features/Home/data/home_repos/home_repos_impl.dart';
import 'package:bookly/Features/Home/presentation/manager/BlocOpserver/BlocOpserver.dart';
import 'package:bookly/Features/Home/presentation/manager/FeaturedBooksCubit/FeaturedBooksCubit.dart';
import 'package:bookly/Features/Home/presentation/manager/NewestBooksCubit/NewestBooksCubit.dart';
import 'package:bookly/core/Utils/AppRouter.dart';
import 'package:bookly/core/Utils/ColorsClass.dart';
import 'package:bookly/core/Utils/Get_It.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  Bloc.observer = MyBlocObserver();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeaturedBooksCubit(getIt.get<HomeRepoImpl>())..getBooks(),
        ),
        BlocProvider(
          create: (context) =>
              NewestBooksCubit(getIt.get<HomeRepoImpl>())..getBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: ColorsClass.kbackgroundColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}
