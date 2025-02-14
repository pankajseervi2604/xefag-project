import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:xefag_pharmacy_app/pages/product_details_page.dart';

class ProductComponent extends StatelessWidget {
  final String imageUrl;
  final String bottleName;
  final String bottleDiscription;
  final Color textColor;
  final List<Color> graidentColor;

  const ProductComponent(
      {super.key,
      required this.imageUrl,
      required this.bottleName,
      required this.bottleDiscription,
      required this.textColor,
      required this.graidentColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 600.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.r),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: graidentColor,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.r),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  bottleName,
                  style: TextStyle(
                    fontSize: 32.sp,
                    fontWeight: FontWeight.bold,
                    color: textColor,
                  ),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: CircleBorder(),
                  ),
                  onPressed: () {},
                  child: Text(
                    "30",
                    style: TextStyle(
                      color: textColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Image.asset(
            imageUrl,
            height: 300.h,
            width: 200.w,
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            bottleDiscription,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.sp,
              color: textColor,
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          OutlinedButton(
            onPressed: () {
              if (bottleName == "Relax") {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductDetailsPage(
                      imageSource: imageUrl,
                    ),
                  ),
                );
              } else {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductDetailsPage(
                      imageSource: imageUrl,
                    ),
                  ),
                );
              }
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Details",
                  style: TextStyle(color: textColor),
                ),
                SizedBox(
                  width: 5.w,
                ),
                FaIcon(
                  FontAwesomeIcons.angleRight,
                  size: 15,
                  color: textColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
