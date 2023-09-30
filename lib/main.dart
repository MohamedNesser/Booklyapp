import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:newbookapp/cubitApp/fetchur_newset_book/cubit/newset_books_cubit.dart';
import 'package:newbookapp/cubitApp/fetuchar_book_cubit/cubit/vew_all_books_cubit.dart';
import 'package:newbookapp/modelapp/api/api_service.dart';
import 'package:newbookapp/modelapp/bookmodel/bookmodel.dart';
import 'package:newbookapp/modelapp/repostry/home_rebo.dart';
import 'package:newbookapp/presantion/screens/detalesscreen/datales_screen.dart';
import 'package:newbookapp/presantion/screens/homescreen/home_screen.dart';
import 'package:newbookapp/presantion/screens/search_sceen/seach_screen_body.dart';
import 'package:newbookapp/presantion/screens/splachscreen/splach_screen.dart';

import 'cubitApp/cubit/fetchur_deatals_book_cubit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                VewAllBooksCubit(Homerebo(apisrvice(Dio())))..Fetchallbooks()),
        BlocProvider(
            create: (context) => NewsetBooksCubit(Homerebo(apisrvice(Dio())))
              ..Fetchallnewstbooks()),
      ],
      child: MaterialApp.router(
        routerConfig: approuter,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color(0xff212F3C),
        ),
        routeInformationParser: null,
        routerDelegate: null,
      ),
    );
  }
}

final approuter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SplachScreen(),
    ),
    GoRoute(
      path: '/detalesscreen',
      builder: (context, state) => BlocProvider(
        create: (context) => FetchurDeatalsBooCubit(Homerebo(apisrvice(Dio()))),
        child:  detalsscreen(
          bookModel:state.extra as Bookmodel
          ),
      ),
    ),
    GoRoute(
      path: '/Homepage',
      builder: (context, state) => Homepage(),
    ),
    GoRoute(
      path: '/seachscreenbody',
      builder: (context, state) => seachscreenbody(),
    ),
  ],
);
