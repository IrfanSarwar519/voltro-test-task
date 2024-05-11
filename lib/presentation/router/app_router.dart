import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:voltro_test_task/presentation/router/routes.dart';

import '../../businessLogic/bloc/homeBloc/home_bloc.dart';
import '../../dataProvider/model/response/countries_model.dart';
import '../../helper/constant/global_keys.dart';
import '../screens/details_screen.dart';
import '../screens/home_screen.dart';
import '../screens/scaffold_with_navbar_screen.dart';
import '../screens/search_screen.dart';

/// This class controls the routing functionality of the application.
class AppRouter {
  AppRouter() {
    _homeBloc = HomeBloc();
  }

  static late HomeBloc _homeBloc;

  final router = GoRouter(
    initialLocation: HOME_SCREEN_ROUTE,
    navigatorKey: GlobalKeys.rootNavigatorKey,
    routes: [
      ShellRoute(
        navigatorKey: GlobalKeys.shellNavigatorKey,
        pageBuilder: (context, state, child) {
          return NoTransitionPage(
              child: ScaffoldWithNavBar(
            location: state.matchedLocation,
            child: child,
          ));
        },
        routes: [
          GoRoute(
            path: HOME_SCREEN_ROUTE,
            parentNavigatorKey: GlobalKeys.shellNavigatorKey,
            pageBuilder: (context, state) {
              return NoTransitionPage(
                child: BlocProvider.value(
                  value: _homeBloc,
                  child: const HomeScreen(),
                ),
              );
            },
          ),
          GoRoute(
            path: SEARCH_SCREEN_ROUTE,
            parentNavigatorKey: GlobalKeys.shellNavigatorKey,
            pageBuilder: (context, state) {
              return NoTransitionPage(
                child: BlocProvider.value(
                  value: _homeBloc,
                  child: const SearchScreen(),
                ),
              );
            },
          )
        ],
      ),
      GoRoute(
        parentNavigatorKey: GlobalKeys.rootNavigatorKey,
        path: DETAILS_SCREEN_ROUTE,
        pageBuilder: (context, state) {
          final country = state.extra as CountriesModel;
          return NoTransitionPage(
            key: UniqueKey(),
            child: DetailsScreen(country: country),
          );
        },
      ),
    ],
  );

  void dispose() {
    _homeBloc.close();
  }
}
