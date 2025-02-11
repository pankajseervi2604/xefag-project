import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.all(5.r),
          child: Image.asset(
            "assets/images/AppLogos/AppLogo1.png",
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 10.r, right: 10.sp),
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
                height: 20.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        labelText: "First Name",
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(10.r),
                          child: FaIcon(FontAwesomeIcons.user),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r)),
                        labelText: "Last Name",
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(10.r),
                          child: FaIcon(FontAwesomeIcons.user),
                        ),
                      ),
                    ),
                  ),
                ],
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
                    padding: EdgeInsets.all(10.r),
                    child: FaIcon(FontAwesomeIcons.userPen),
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
                    padding: EdgeInsets.all(10.r),
                    child: Icon(Icons.email),
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
                  labelText: "Phone Number",
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(10.r),
                    child: FaIcon(FontAwesomeIcons.phone),
                  ),
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
                    padding: EdgeInsets.all(10.r),
                    child: Icon(Icons.password),
                  ),
                  suffixIcon: Padding(
                    padding: EdgeInsets.all(10.r),
                    child: FaIcon(FontAwesomeIcons.eyeSlash),
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
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
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(110, 156, 186, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                  ),
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
