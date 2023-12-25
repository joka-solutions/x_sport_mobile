import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constance/app_constance.dart';
import '../../widgets/rectangle_container.dart';

class MemberShipComponent extends StatelessWidget {
  const MemberShipComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return RectangleContainer(
        bottomMargin: 10,
        containerColor: XColors.Background_Color1,
        child: SizedBox(
          height: 86.h,
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: 20.w),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'نقاط الخبرة',
                          style: GoogleFonts.tajawal(
                              color: Colors.white,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 30.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '6500',
                                style: GoogleFonts.tajawal(
                                    color: Color(0xFFE3E3E3),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w300),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      bottom: 4.w,
                                      left: 10.0
                                          .w), // Adjust the left padding as needed
                                  child: Icon(
                                    Icons.add_circle,
                                    color: Colors.white,
                                    size: 22.sp,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                ),
              ),
              Container(
                width: 0.5.w,
                height: 60.h,
                color: Color(0xFFA6A6A6),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: 20.w),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'عضوية',
                          style: GoogleFonts.tajawal(
                              color: Colors.white,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                                size: 16.sp,
                              ),
                              Text(
                                'اسم الاكاديمية',
                                style: GoogleFonts.tajawal(
                                    color: Color(0xFFE3E3E3),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        )
                      ]),
                ),
              ),
            ],
          ),
        ));
  }
}
