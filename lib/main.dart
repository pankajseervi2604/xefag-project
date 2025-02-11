import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xefag_pharmacy_app/pages/home_page.dart';
import 'package:xefag_pharmacy_app/pages/login_page.dart';
import 'package:xefag_pharmacy_app/pages/password_reset.dart';
import 'package:xefag_pharmacy_app/pages/sign_up.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return ScreenUtilInit(
      designSize: Size(width, height),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: '/login',
          routes: {
            "/": (context) => HomePage(),
            "/login": (context) => LoginPage(),
            "/signup": (context) => SignUp(),
            "/password":(context) => PasswordReset(),
          },
        );
      },
    );
  }
}
