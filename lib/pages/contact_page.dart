import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';

class ContactPage extends StatelessWidget {
  final List<String> listImages = [
    "assets/images/profiles/profile_1.jpeg",
    "assets/images/profiles/profile_2.jpeg",
    "assets/images/profiles/profile_3.jpeg",
  ];
  ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        surfaceTintColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Customer\nExperience\nand Feedback",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            CarouselSlider.builder(
              options: CarouselOptions(
                height: 200.h,
                autoPlay: true,
              ),
              itemCount: listImages.length,
              itemBuilder: (context, index, realIndex) {
                final imageUrl = listImages[index];
                return Padding(
                  padding: EdgeInsets.all(8.r),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.r),
                    child: Image.asset(
                      imageUrl,
                      fit: BoxFit.fill,
                    ),
                  ),
                );
              },
            ),
            SizedBox(
              height: 30.h,
            ),
            Text(
              "I was always supported. The staff\nwas great at providing opportunities\nfor me to work towards stability.\nWhat helped me here was always\nkeeping a positive outlook and the\nconstant encouragement and\nreminders to keep faith in myself.\ncan not give enough thanks to\neveryone here.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.sp,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Steve Berkley",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/AppLogos/AppLogo.png",
                  height: 35.h,
                  width: 35.w,
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
            SizedBox(
              height: 30.h,
            ),
            Text(
              "Subscribe and get all the updates",
              style: TextStyle(
                fontSize: 14.sp,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.r, right: 16.r),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Email",
                    suffixIcon: Icon(Iconsax.arrow_right5),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    )),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Text("Follow us"),
            SizedBox(
              height: 5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton.outlined(
                    onPressed: () {}, icon: FaIcon(FontAwesomeIcons.facebook)),
                IconButton.outlined(
                    onPressed: () {}, icon: FaIcon(FontAwesomeIcons.twitter)),
                IconButton.outlined(
                    onPressed: () {}, icon: FaIcon(FontAwesomeIcons.linkedin)),
                IconButton.outlined(
                    onPressed: () {}, icon: FaIcon(FontAwesomeIcons.instagram)),
              ],
            ),
            SizedBox(
              height: 50.h,
            ),
            Text("2024 Xefag. All rights reserved"),
            SizedBox(
              height: 50.h,
            ),
          ],
        ),
      ),
    );
  }
}
