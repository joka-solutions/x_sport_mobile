import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_sport/core/constance/app_constance.dart';

class SubmitButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  final bool isButtonEnabled;
  final Color textColor;
  final Color fillColor;
  final double radius;
  final double minWidth;
  final double height;
  final double textSize;
  final double padding;

  const SubmitButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.isButtonEnabled = true,
      this.textColor = const Color(0xffffffff),
      this.fillColor = XColors.Background_Color1,
      this.radius = 15,
      this.minWidth = 329,
      this.height = 58,
      this.textSize = 20,
      this.padding = 4});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      minWidth: minWidth.w,
      height: height.h,
      color: fillColor,
      padding: EdgeInsets.all(padding.sp),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius.sp),
      ),
      onPressed: isButtonEnabled ? onPressed : () {},
      child: Text(
        text,
        style: GoogleFonts.tajawal(
          textStyle: TextStyle(
              color: textColor,
              fontSize: textSize.sp,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
