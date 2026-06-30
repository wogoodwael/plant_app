import 'package:flutter/material.dart';
import 'package:plant_app/auth/login/login_screen.dart';
import 'package:plant_app/core/routes/app_routes.dart';
import 'package:plant_app/home/bottom_nav_bar.dart';

class AppRouter {
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.login:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case AppRoutes.home:
        final userName = settings.arguments as String ;
        return MaterialPageRoute(builder: (_) => HomePage(userName: userName,));
    }
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold();
      },
    );
  }
}
