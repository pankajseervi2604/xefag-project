import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';
import 'package:xefag_pharmacy_app/pages/cart_page.dart';
import 'package:xefag_pharmacy_app/pages/profile_page.dart';
import 'package:xefag_pharmacy_app/widgets/product_component.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        titleSpacing: 1,
        title: Text(
          "Products",
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 16.r, right: 16.r, top: 40.r),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50.h,
                ),
                Image.asset(
                  "assets/images/AppLogos/AppLogo.png",
                  height: 150.h,
                  width: 150.w,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  "About Xefag",
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  "Melt Away\nYour\nProblems",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  "We work in close partneship\nwith out clients - including the NHS, the\nmilitary, major private healthcare providers\nand GP practices. ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                ProductComponent(
                    imageUrl: "assets/images/products/relax.png",
                    bottleName: "Relax",
                    bottleDiscription:
                        "Perfect for times\nwhen you need to relax and unwind.",
                    textColor: Colors.black,
                    graidentColor: [
                      Color.fromRGBO(247, 186, 25, 1),
                      Color.fromRGBO(252, 216, 52, 1),
                      Color.fromRGBO(245, 164, 1, 1),
                    ]),
                SizedBox(
                  height: 10.h,
                ),
                ProductComponent(
                  imageUrl: "assets/images/products/sleep.png",
                  bottleName: "Sleep",
                  bottleDiscription:
                      "Helpful for nights\nwhen you need to get better sleep.",
                  textColor: Colors.white,
                  graidentColor: [
                    Color.fromRGBO(167, 26, 59, 1),
                    Color.fromRGBO(200, 45, 80, 1),
                    Color.fromRGBO(131, 5, 34, 1),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
