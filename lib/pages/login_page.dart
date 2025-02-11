import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xefag_pharmacy_app/pages/password_reset.dart';
import 'package:xefag_pharmacy_app/pages/sign_up.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 350.h,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment.topCenter,
                  radius: 0.8.r,
                  colors: [
                    Color.fromRGBO(76, 130, 168, 1),
                    Color.fromRGBO(110, 156, 186, 1),
                    Color.fromRGBO(147, 182, 207, 1),
                  ],
                ),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(50.r),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 25.h,
                  ),
                  // App Logo
                  Image.asset(
                    "assets/images/AppLogos/AppLogo.png",
                    height: 250.h,
                    width: 250.w,
                  ),
                  // App Title
                  Text(
                    "Xefag",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 45.sp,
                      letterSpacing: 3,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            // Login info
            Padding(
              padding: EdgeInsets.only(left: 32.r, right: 32.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "Welcome Back!",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 30.sp,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "To get started, sign in to your account.",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),

                  // User Email
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      hintText: "Enter your Email",
                      // this will automatically change when user clicks on textfield
                      // Note : if you are using focusedBorder then border widget is not required
                      // but the border will not be visible so using enabledBorder , by defualt every textfield is enabled border
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(110, 156, 186, 1),
                          width: 3.w,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1.w,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  // User Password
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.remove_red_eye),
                      ),
                      hintText: "Enter your Password",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(110, 156, 186, 1),
                          width: 3.w,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1.w,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => PasswordReset(),
                          ),
                        );
                      },
                      child: Text(
                        "Forget Password",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationThickness: 2,
                          decorationColor: Colors.black,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SizedBox(
                    width: 200.w,
                    height: 50.h,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(110, 156, 186, 1),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Dont't have account?"),
                      TextButton(
                        // NAVIGATING TO SIGN_UP PAGE
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => SignUp(),
                            ),
                          );
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 14.sp,
                            color: Color.fromRGBO(110, 156, 186, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
