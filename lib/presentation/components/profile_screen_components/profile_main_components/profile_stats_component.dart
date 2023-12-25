import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constance/app_constance.dart';
import '../../../widgets/rectangle_container.dart';

class ProfileStatsComponent extends StatelessWidget {
  final int? followers;
  final int? matchesCount;
  const ProfileStatsComponent(
      {super.key, required this.followers, required this.matchesCount});

  @override
  Widget build(BuildContext context) {
    return RectangleContainer(
      bottomMargin: 10.h,
      child: Padding(
        padding: EdgeInsets.only(top: 8.h, bottom: 16.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text(
                  'المتابعين',
                  style: GoogleFonts.tajawal(
                    textStyle: TextStyle(
                        color: XColors.Background_Color1,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Text(
                  '0',
                  style: GoogleFonts.tajawal(
                    textStyle: TextStyle(
                        color: XColors.Background_Color1,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.black,
              width: 0.3.w,
              height: 50.h,
            ),
            Column(
              children: [
                Text(
                  'المباريات',
                  style: GoogleFonts.tajawal(
                    textStyle: TextStyle(
                        color: XColors.Background_Color1,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Text(
                  matchesCount.toString(),
                  style: GoogleFonts.tajawal(
                    textStyle: TextStyle(
                        color: XColors.Background_Color1,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.black,
              width: 0.3.w,
              height: 50.h,
            ),
            Column(
              children: [
                Text(
                  'المتابعون',
                  style: GoogleFonts.tajawal(
                    textStyle: TextStyle(
                        color: XColors.Background_Color1,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Text(
                  followers.toString(),
                  style: GoogleFonts.tajawal(
                    textStyle: TextStyle(
                        color: XColors.Background_Color1,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
