import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reciepe_app/utils/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      ensureScreenSize: true,
      useInheritedMediaQuery: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteManager.onGenerateRoute,
        initialRoute: RouteManager.homePage,
        theme: ThemeData(
            appBarTheme: const AppBarTheme(
                elevation: 0, backgroundColor: Colors.white, centerTitle: true),
            scaffoldBackgroundColor: Colors.white),
      ),
    );
  }
}
