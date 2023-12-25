import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SuggestedAcademiesComponent extends StatelessWidget {
  const SuggestedAcademiesComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.04.sw),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size(50.w, 30.h),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    alignment: Alignment.centerLeft),
                onPressed: () {},
                child: Text(
                  'عرض الكل',
                  style: GoogleFonts.tajawal(
                    color: const Color(0xFF2E5DD7),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Text(
                'اكاديميات مقترحة',
                style: GoogleFonts.tajawal(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ],
          ),
          Text(
            'حول هوايتك الى مستوى من الاحتراف',
            style: GoogleFonts.tajawal(
              color: Color(0xFF5C5C5C),
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
        ],
      ),
    );
  }
}
