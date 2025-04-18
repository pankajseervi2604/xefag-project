import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';
import 'package:xefag_pharmacy_app/pages/home_page.dart';
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
            Padding(
              padding: EdgeInsets.only(top: 32.r),
              child: Image.asset(
                "assets/images/login illusturation.png",
                fit: BoxFit.fill,
                height: 250.h,
                width: 300.w,
              ),
            ),
            // Login info
            Padding(
              padding: EdgeInsets.only(left: 16.r, right: 16.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Welcome Back!",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "To get started, sign in to your account.",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),

                  // User Email
                  TextField(
                    // this will automatically change when user clicks on textfield
                    // Note : if you are using focusedBorder then border widget is not required
                    // but the border will not be visible so using enabledBorder , by defualt every textfield is enabled border

                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      labelText: "Enter your Email",
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        size: 20,
                      ),
                      suffix: Text("@gmail.com"),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  // User Password
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Iconsax.password_check,
                        size: 20,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Iconsax.eye_slash,
                          size: 20,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      labelText: "Enter your Password",
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        // FORGET PASSWORD BOTTOM SHEET
                        showModalBottomSheet(
                          elevation: 5,
                          enableDrag: true,
                          useSafeArea: true,
                          showDragHandle: true,
                          backgroundColor: Colors.white,
                          context: context,
                          builder: (context) {
                            return SizedBox(
                              height: double.infinity,
                              width: double.infinity,
                              child: PasswordReset(),
                            );
                          },
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
                    height: 15.h,
                  ),
                  //TODO  MAKE BUTTON LIGHT COLOR SO USER WHEN FILLED OUT ALL FIELDS THEN IT BECOMES DARK
                  // SIGN IN BUTTON
                  SizedBox(
                    width: double.infinity,
                    height: 50.h,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          )),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      },
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
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                            decorationThickness: 2,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "---------- or ----------",
                    style: TextStyle(fontSize: 15.sp),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OutlinedButton.icon(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                        onPressed: () {},
                        label: FaIcon(
                          FontAwesomeIcons.google,
                          color: Colors.black,
                          size: 15,
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      OutlinedButton.icon(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                        onPressed: () {},
                        label: FaIcon(
                          FontAwesomeIcons.facebook,
                          color: Colors.black,
                          size: 15,
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
