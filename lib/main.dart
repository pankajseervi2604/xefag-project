import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xefag_pharmacy_app/firebase_options.dart';
import 'package:xefag_pharmacy_app/pages/cart_page.dart';
import 'package:xefag_pharmacy_app/pages/contact_page.dart';
import 'package:xefag_pharmacy_app/pages/home_page.dart';
import 'package:xefag_pharmacy_app/pages/login_page.dart';
import 'package:xefag_pharmacy_app/pages/password_reset.dart';
import 'package:xefag_pharmacy_app/pages/products_page.dart';
import 'package:xefag_pharmacy_app/pages/profile_page.dart';
import 'package:xefag_pharmacy_app/pages/sign_up.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
          theme: ThemeData(
            primaryColor: Colors.black,
            colorScheme: ColorScheme.light(
              primary: Colors.black,
            ),
            fontFamily: "opensans",
          ),
          themeMode: ThemeMode.light,
          darkTheme: ThemeData(brightness: Brightness.dark, useMaterial3: true),
          initialRoute: '/login',
          routes: {
            "/": (context) => HomePage(),
            "/login": (context) => LoginPage(),
            "/signup": (context) => SignUp(),
            "/password": (context) => PasswordReset(),
            "/products": (context) => ProductsPage(),
            "/contacts": (context) => ContactPage(),
            "/profile": (context) => ProfilePage(),
            "/cart": (context) => CartPage(),
          },
        );
      },
    );
  }
}
