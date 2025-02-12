import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PasswordReset extends StatelessWidget {
  const PasswordReset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 16.r, right: 16.r),
          child: Column(
            children: [
              SizedBox(
                height: 15.h,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Reset Password",
                  style:
                      TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Enter the email associated with your account and we'll send an email with instruction to reset your password.",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  labelText: "Enter your email",
                  iconColor: Colors.grey[700],
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(10.r),
                    child: FaIcon(
                      FontAwesomeIcons.envelope,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100.h,
              ),

              //TODO HERE TO SAME WORK DONE CHANGE THE COLOR WHEN USER FINISHES THE EMAIL TYPING
              //todo apply animation here that email has be sent
              SizedBox(
                width: double.infinity,
                height: 50.h,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(110, 156, 186, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Send Instruction",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
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
