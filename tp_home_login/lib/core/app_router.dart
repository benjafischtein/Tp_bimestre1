import 'package:go_router/go_router.dart';
import 'package:tp_home_login/screens/screen_home.dart';
import 'package:tp_home_login/screens/screen_login.dart';

final appRouter = GoRouter(
  initialLocation: '/login',
  routes:[
    GoRoute(path: '/home', builder: (context, state) =>  HomeScreen(),),
    GoRoute(path: '/login', builder: (context, state) =>  LoginScreen(),),
  ]
);
