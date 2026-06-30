import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plant_app/auth/login/login_screen.dart';
import 'package:plant_app/core/routes/app_router.dart';


class PlantApp extends StatelessWidget {
  const PlantApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        onGenerateRoute: appRouter.onGenerateRoute,
        home: LoginScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
