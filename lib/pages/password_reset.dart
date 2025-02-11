import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordReset extends StatelessWidget {
  const PasswordReset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          "password reset",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.sp),
        ),
      ),
    );
  }
}
