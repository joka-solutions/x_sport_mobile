import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RectangleButton extends StatelessWidget {
  final void Function() onPressed;
  final double radius;
  final double minWidth;
  final double height;
  final Widget child;
  const RectangleButton(
      {super.key,
      required this.onPressed,
      this.radius = 18,
      required this.child,
      this.minWidth = 0.4,
      this.height = 190});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      height: height.h,
      onPressed: onPressed,
      minWidth: minWidth.sw,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        side: BorderSide(width: 1.w, color: Color(0xFFDBDBDB)),
        borderRadius: BorderRadius.circular(radius.sp),
      ),
      child: child,
    );
  }
}
