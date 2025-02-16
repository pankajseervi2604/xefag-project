import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';
import 'package:xefag_pharmacy_app/pages/cart_page.dart';
import 'package:xefag_pharmacy_app/pages/profile_page.dart';

class ProductDetailsPage extends StatelessWidget {
  final String imageSource;
  final String productName;

  const ProductDetailsPage(
      {super.key, required this.imageSource, required this.productName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        titleSpacing: 1,
        title: Text(
          "$productName xefag",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18.sp,
          ),
        ),
        actions: [
          // PROFILE
          IconButton.outlined(
            style: IconButton.styleFrom(
              iconSize: 20,
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ProfilePage(),
                ),
              );
            },
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
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CartPage(),
                ),
              );
            },
            icon: FaIcon(FontAwesomeIcons.bagShopping),
          ),
          SizedBox(
            width: 16.w,
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 25.h,
                width: 25.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(),
                ),
                child: Padding(
                  padding: EdgeInsets.all(2.r),
                  child: productName == "Relax"
                      ? Image.asset("assets/images/products/lotus.png")
                      : Image.asset("assets/images/products/half-moon.png"),
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                productName,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            width: double.infinity,
            height: 300.h,
            child: Stack(
              children: [
                Center(
                  child: Transform.scale(
                    scale: 1.1,
                    child: Image.asset(
                      "assets/images/AppLogos/AppLogo.png",
                      color: Colors.black12,
                    ),
                  ),
                ),
                Positioned(
                  top: 25,
                  left: 74,
                  child: Image.asset(
                    imageSource,
                    height: 250.h,
                    width: 250.w,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 35.h,
                width: 35.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(),
                  color: Colors.black,
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.r),
                  child: Text(
                    "30",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Container(
                height: 35.h,
                width: 35.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.r),
                  child: Text("60"),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Container(
                height: 35.h,
                width: 35.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.r),
                  child: Text(
                    "90",
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.all(16.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$productName\nDissolvable Wafers",
                    style:
                        TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "250 mg",
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "We work in close partnership with our clients ~ including\nthe NHS, the milary, major private healthcare providers\nand GP practices.",
                    textAlign: TextAlign.left,
                    maxLines: 3,
                    style: TextStyle(
                      fontSize: 12.sp,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        showDragHandle: true,
                        context: context,
                        builder: (context) {
                          return SizedBox(
                            height: 300.h,
                            width: double.infinity,
                            child: Column(
                              children: [
                                Text("Overview"),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Row(
                      children: [
                        Icon(
                          Iconsax.information,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          "Overview, Dosaage and Side effects",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationStyle: TextDecorationStyle.dotted,
                            decorationColor: Colors.black,
                            decorationThickness: 4,
                            fontSize: 14.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "\$25.50",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22.sp,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            iconSize: 20,
                            onPressed: () {},
                            icon: FaIcon(FontAwesomeIcons.plus),
                          ),
                          SizedBox(
                            width: 3.w,
                          ),
                          Text(
                            "1",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22.sp,
                            ),
                          ),
                          IconButton(
                            iconSize: 20,
                            onPressed: () {},
                            icon: FaIcon(FontAwesomeIcons.minus),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50.h),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r)),
                      backgroundColor: Colors.black,
                    ),
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.moneyBill1,
                      color: Colors.white,
                    ),
                    label: Text(
                      "Buy Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
