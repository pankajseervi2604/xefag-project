import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  final String imageSource;
  const ProductDetailsPage({super.key, required this.imageSource});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset(imageSource),),
    );
  }
}