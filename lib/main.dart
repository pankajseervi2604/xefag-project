import 'package:flutter/material.dart';
import 'package:xefag_pharmacy_app/pages/home_page.dart';
import 'package:xefag_pharmacy_app/pages/login_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Removing Debuging banner
      debugShowCheckedModeBanner: false,

      // ThemeData
      theme: ThemeData(fontFamily: "opensans"),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(brightness: Brightness.dark),
      // Routes
      // Note : while using initialRoute home property is not required
      initialRoute: "/Login",
      routes: {
        "/": (context) => const HomePage(),
        "/Login": (context) => const LoginPage(),
      },
    );
  }
}
