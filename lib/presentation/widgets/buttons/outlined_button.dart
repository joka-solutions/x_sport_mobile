import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_sport/core/constance/app_constance.dart';

class OutlinButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  final bool isButtonEnabled;
  final Color textColor;
  final Color fillColor;
  final String image;
  const OutlinButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.isButtonEnabled = true,
      this.textColor = const Color(0xffffffff),
      this.fillColor = XColors.Background_Color1,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      minWidth: 329.w,
      height: 58.h,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: XColors.Outline_Button_Color, width: 1.w),
        borderRadius: BorderRadius.circular(15.sp),
      ),
      onPressed: isButtonEnabled ? onPressed : () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/icons/$image'),
          Text(
            text,
            style: GoogleFonts.tajawal(
              textStyle: TextStyle(
                  color: textColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
