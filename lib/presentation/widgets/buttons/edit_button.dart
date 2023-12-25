import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class EditButton extends StatelessWidget {
  final Widget child;
  final String labelText;
  const EditButton({super.key, required this.child, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 34.0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 4.0.h),
            child: Text(
              labelText,
              style: GoogleFonts.tajawal(
                textStyle: TextStyle(
                    color: Color(0xFF979797),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            height: 50.h,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.black,
                  width: 1.2.w,
                ),
              ),
            ),
            child: child,
          ),
        ],
      ),
    );
  }
}
