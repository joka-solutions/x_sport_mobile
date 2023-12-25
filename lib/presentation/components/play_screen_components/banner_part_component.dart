import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BannerPartComponent extends StatelessWidget {
  final double top;
  final double right;
  final double left;
  final String image;

  const BannerPartComponent(
      {super.key,
      required this.top,
      required this.right,
      required this.left,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top.w,
      right: right.w,
      left: left.w,
      bottom: 0,
      child: Container(
        width: 1.sw,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            'assets/images/play/$image',
          ),
        )),
      ),
    );
  }
}
