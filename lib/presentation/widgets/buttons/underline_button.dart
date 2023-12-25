import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:x_sport/core/constance/app_constance.dart';

class UnderlinButton extends StatelessWidget {
  final String buttonText;
  final void Function() onPressed;

  const UnderlinButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          textStyle: GoogleFonts.tajawal().copyWith(
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.solid,
            decorationColor: XColors.Background_Color1,
            color: XColors.Background_Color1,
            fontSize: 16.sp,
          ),
        ),
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            color: XColors.Background_Color1,
          ),
        ));
  }
}
