import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constance/app_constance.dart';
import '../../../widgets/buttons/rectangle_button.dart';

class ProfileSocietyComponent extends StatelessWidget {
  const ProfileSocietyComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 190.h,
          width: 1.sw,
          child: Row(
            children: [
              RectangleButton(
                  onPressed: () {},
                  child: SizedBox(
                    height: 100.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'ارشيف المباريات\n الملعوبة',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.tajawal(
                            textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Text(
                          'لايوجد مباريات بعد',
                          style: GoogleFonts.tajawal(
                            textStyle: TextStyle(
                                color: XColors.Submit_Button_Color,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  )),
              SizedBox(width: 20.w),
              RectangleButton(
                  onPressed: () {},
                  child: SizedBox(
                    height: 100.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'ارشيف المنشورات',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.tajawal(
                            textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Text(
                          'لايوجد منشورات بعد',
                          style: GoogleFonts.tajawal(
                            textStyle: TextStyle(
                                color: XColors.Submit_Button_Color,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
        SizedBox(height: 20.w),
        SizedBox(
            height: 160.h,
            child: RectangleButton(
                minWidth: 1,
                onPressed: () {},
                child: SizedBox(
                  height: 70.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ارشيف المباريات النشطة',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.tajawal(
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Text(
                        'لايوجد مباريات بعد',
                        style: GoogleFonts.tajawal(
                          textStyle: TextStyle(
                              color: XColors.Submit_Button_Color,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ))),
      ],
    );
  }
}
