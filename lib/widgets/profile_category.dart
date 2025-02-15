import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileCategory extends StatelessWidget {
  final IconData icon;
  final String title;

  const ProfileCategory({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      child: SizedBox(
        height: 50.h,
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(8.r),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    icon,
                    size: 20,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    title,
                    style: TextStyle(fontSize: 18.sp),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.angleRight,
                      size: 20,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
