import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePhotoEdit extends StatelessWidget {
  const ProfilePhotoEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: 16.r,
          right: 16.r,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Edit Your Profile",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22.sp,
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                FaIcon(
                  FontAwesomeIcons.pen,
                  size: 15,
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
                minimumSize: Size(double.infinity, 50),
              ),
              onPressed: () {},
              child: Text("Upload from gallery"),
            ),
            SizedBox(
              height: 10.h,
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  minimumSize: Size(double.infinity, 50),
                  backgroundColor: Colors.black),
              onPressed: () {},
              child: Text(
                "Take Picture",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
