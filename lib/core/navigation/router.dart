import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:kmg_password_manager/views/auth_view/login_page_view/page/login_page_view.dart';
import 'package:kmg_password_manager/views/auth_view/registration_page_view/page/registration_page_view.dart';
import 'package:kmg_password_manager/welcomepage.dart';
import '../../views/home_view/page/homepage_view.dart';
import 'route_names.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

final GoRouter goRouter = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path:'/',
      name:RouteNames.welcome.name,
      builder: (context, state) => const WelcomePage(),
    ),
    GoRoute(
      path: RouteNames.home.path,
      name: RouteNames.home.name,
      builder: (context, state) => const HomePageView(),
    ),
    GoRoute(
      path: RouteNames.login.path,
      name: RouteNames.login.name,
      builder: (context, state) => const LoginPageView(),
    ),
    GoRoute(
      path: RouteNames.registration.path,
      name: RouteNames.registration.name,
      builder: (context, state) => const RegistrationPageView(),
    ),
  ],
);
