import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Padding(
        padding: EdgeInsets.only(left: 16.r, right: 16.r, top: 40.r),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/images/AppLogos/AppLogo.png",
                      height: 50.h,
                      width: 50.w,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "xefag",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24.sp,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    // USER PROFILE
                    IconButton.outlined(
                      style: IconButton.styleFrom(
                        iconSize: 20,
                      ),
                      onPressed: () {},
                      icon: Icon(Iconsax.user4),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    // CART
                    IconButton.outlined(
                      style: IconButton.styleFrom(
                        iconSize: 20,
                      ),
                      onPressed: () {},
                      icon: FaIcon(FontAwesomeIcons.bagShopping),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // PRODUCTS
                SizedBox(
                  height: 40.h,
                  width: 110.w,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      elevation: 0.1,
                    ),
                    onPressed: () {},
                    child: Text(
                      "Products",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                // Contact
                SizedBox(
                  height: 40.h,
                  width: 110.w,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      elevation: 0.1,
                    ),
                    onPressed: () {},
                    child: Text(
                      "Contact",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            Text(
              "Flexible soultion \nfor all kind of people",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              height: 400.h,
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned(
                    left: 70,
                    child: Text(
                      "Powerful\nBoost",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 46,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Positioned(
                    left: -30,
                    top: 150,
                    child: Transform.rotate(
                      angle: 345 * pi / 180,
                      child: Image.asset(
                        "assets/images/products/relax.png",
                        height: 250.h,
                        width: 250.w,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 130,
                    top: 90,
                    child: Transform.rotate(
                      angle: 15 * pi / 180,
                      child: Image.asset(
                        "assets/images/products/sleep.png",
                        height: 250.h,
                        width: 250.w,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text("About xefag"),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Helping humans\nbecome happier &\nhealthier!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 26,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
