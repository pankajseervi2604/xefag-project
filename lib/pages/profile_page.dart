import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';
import 'package:xefag_pharmacy_app/pages/login_page.dart';
import 'package:xefag_pharmacy_app/widgets/profile_category.dart';
import 'package:xefag_pharmacy_app/widgets/profile_photo_edit.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18.sp,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 16.r, right: 16.r, top: 40.r),
        child: Column(
          children: [
            SizedBox(
              height: 200.h,
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned(
                    top: 25,
                    left: 100,
                    child: Container(
                      height: 150.h,
                      width: 150.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 95,
                    child: CircleAvatar(
                      radius: 80.r,
                      backgroundImage:
                          AssetImage("assets/images/profile photo.png"),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  Positioned(
                    top: 155,
                    left: 210,
                    child: IconButton.outlined(
                      onPressed: () {
                        showModalBottomSheet(
                          enableDrag: true,
                          showDragHandle: true,
                          context: context,
                          builder: (context) => SizedBox(
                            height: 200.h,
                            child: ProfilePhotoEdit(),
                          ),
                        );
                      },
                      icon: FaIcon(
                        FontAwesomeIcons.pen,
                        size: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "User1234",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.sp,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Column(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                ProfileCategory(
                    icon: FontAwesomeIcons.user, title: "Edit Profile"),
                SizedBox(
                  height: 10.h,
                ),
                ProfileCategory(
                    icon: Icons.notification_add_outlined,
                    title: "Nofitication"),
                SizedBox(
                  height: 10.h,
                ),
                ProfileCategory(
                    icon: Icons.home_outlined, title: "Shipping Address"),
                SizedBox(
                  height: 10.h,
                ),
                ProfileCategory(
                    icon: Icons.password_outlined, title: "Change Password"),
                SizedBox(
                  height: 100.h,
                ),
                TextButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Warning!"),
                          content: Text(
                            "Are You Sure, you want to log out?",
                            style: TextStyle(
                              fontSize: 14.sp,
                            ),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => LoginPage(),
                                  ),
                                );
                              },
                              child: Text(
                                "Yes",
                                style: TextStyle(
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("No"),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text(
                    "Log Out",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 16.sp,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
