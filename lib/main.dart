import 'package:app/models/UserModel.dart';
import 'package:app/route.dart';
import 'package:app/views/AppPage.dart';
import 'package:app/views/ColumnPage.dart';
import 'package:app/views/ImagePage.dart';
import 'package:app/views/tap/GestureDetectorPage.dart';
import 'package:app/views/router/DetailPage.dart';
import 'package:app/views/LoginPage.dart';
import 'package:app/views/router/ModalPage.dart';
import 'package:app/views/RoutePage.dart';
import 'package:app/views/UserPage.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        name: 'home',
        builder: (BuildContext context, GoRouterState state) {
          return const AppPage();
        },
        routes: [
          GoRoute(
            path: 'detail',
            builder: (context, state) => const DetailPage(),
          ),
          GoRoute(
            path: 'modal',
            pageBuilder: (context, state) {
              final params = state.queryParams;
              final UserModel user = UserModel.fromJson(params);
              return MaterialPage(
                fullscreenDialog: true,
                child: ModalPage(user: user),
              );
            },
          )
        ],
      ),
      GoRoute(
        path: '/router',
        name: 'router',
        builder: (BuildContext context, GoRouterState state) {
          return const RoutePage();
        },
      ),
      GoRoute(
        path: '/user',
        name: 'user',
        builder: (BuildContext context, GoRouterState state) {
          return const UserPage();
        },
      ),
      GoRoute(
        path: '/login',
        name: 'login',
        builder: (BuildContext context, GoRouterState state) {
          return const LoginPage();
        },
      ),
      GoRoute(
        path: '/ges',
        name: 'ges',
        builder: (BuildContext context, GoRouterState state) {
          return const GestureDetectorPage();
        },
      ),
      GoRoute(
        path: '/image',
        name: 'image',
        builder: (BuildContext context, GoRouterState state) {
          return const ImagePage();
        },
      ),
    ],
    redirect: (BuildContext context, GoRouterState state) {
      if (state.location == '/user') {
        return '/login';
      }
      return state.location;
    },
    initialLocation: '/');

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
