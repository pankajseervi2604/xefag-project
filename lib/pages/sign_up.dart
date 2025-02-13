import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 16.r, right: 16.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Let's Create your account",
                style: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r)),
                  labelText: "User Name",
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(15.r),
                    child: FaIcon(
                      FontAwesomeIcons.userAstronaut,
                      size: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r)),
                  labelText: "E-mail",
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(15.r),
                    child: FaIcon(
                      FontAwesomeIcons.envelopeOpen,
                      size: 18,
                    ),
                  ),
                  suffix: Text("@gmail.com"),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r)),
                  labelText: "Password",
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(15.r),
                    child: Icon(
                      Iconsax.password_check5,
                      size: 20,
                    ),
                  ),
                  suffixIcon: Padding(
                    padding: EdgeInsets.all(10.r),
                    child: Icon(
                      Iconsax.eye_slash,
                      size: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 350.h,
              ),
              Row(
                children: [
                  SizedBox(
                    height: 24.h,
                    width: 24.w,
                    child: Checkbox(
                      value: true,
                      onChanged: (value) {},
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "I agree to ",
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: "Privacy Policy",
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: " and ",
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: "Terms of use",
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),

              //TODO MAKE BUTTON LIGHT COLOR SO WHEN USER FILL ALL THE REQUIRED FIELDS THEN BUTTON AUTOMATICALLY BECOMES DARK
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                  ),

                  //TODO DIALOG BOX SHOULD BE POP UP WHEN USER ACCOUNT CREATION IS DONE THAT "ACCOUNT HAS BEEN CREATED, PLEASE LOGIN AGAIN"
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "Create Account",
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
