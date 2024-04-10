import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:kmg_password_manager/welcomepage.dart';
import '../../features/auth/presentation/login/page/login_page_view.dart';
import '../../features/auth/presentation/registration/page/registration_page_view.dart';
import '../../features/home/presentation/page/homepage_view.dart';
import '../../features/profile/presentation/page/profile_page_view.dart';
import 'route_names.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

final GoRouter goRouter = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path:'/',
      name:RouteNames.home.name,
      builder: (context, state) => const HomePageView(),
    ),
    GoRoute(
      path: RouteNames.login.path,
      name: RouteNames.login.name,
      builder: (context, state) => const LoginPageView(),
    ),
    GoRoute(
      path: RouteNames.welcome.path,
      name: RouteNames.welcome.name,
      builder: (context, state) => const WelcomePage(),
    ),
    GoRoute(
      path: RouteNames.registration.path,
      name: RouteNames.registration.name,
      builder: (context, state) => const RegistrationPageView(),
    ),
    GoRoute(
      path: RouteNames.profile.path,
      name: RouteNames.profile.name,
      builder: (context, state) => const ProfilePageView(),
    ),
  ],
);
