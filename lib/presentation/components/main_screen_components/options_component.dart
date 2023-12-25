import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_sport/core/constance/app_constance.dart';

class OptionsButtonComponent extends StatelessWidget {
  final ValueNotifier<bool> openCloseDial = ValueNotifier<bool>(false);
  final void Function(int x) handleAddButton;

  OptionsButtonComponent({super.key, required this.handleAddButton});

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      shape: CircleBorder(
        side: BorderSide(
          color: XColors.Submit_Button_Color,
        ),
      ),
      icon: Icons.add,
      iconTheme: IconThemeData(color: Colors.white, size: 24.sp),
      // activeIcon: Icons.close,
      spacing: 0.01.sh,
      switchLabelPosition: false,
      // animatedIconTheme: const IconThemeData(color: Colors.white),
      backgroundColor: XColors.Submit_Button_Color,
      overlayColor: Colors.black,
      overlayOpacity: 0.6,
      openCloseDial: openCloseDial,
      buttonSize: Size(30.sp, 30.sp),
      childrenButtonSize: Size(80.sp, 80.sp),

      children: [
        SpeedDialChild(
            shape: CircleBorder(
              side: BorderSide(
                color: Colors.white,
              ),
            ),
            backgroundColor: Colors.white,
            onTap: () {
              openCloseDial.value = false;
              handleAddButton(1);
            },
            labelWidget: Container(
              color: Colors.transparent,
              child: Text(
                'بدء مباراة',
                style: GoogleFonts.tajawal(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500),
              ),
            ),
            child: Container(
              height: 40.h,
              width: 40.w,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/whistle.png'))),
            )),
        SpeedDialChild(
            shape: CircleBorder(
              side: BorderSide(
                color: Colors.white,
              ),
            ),
            labelWidget: Container(
              color: Colors.transparent,
              child: Text(
                'حجز ملعب',
                style: GoogleFonts.tajawal(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500),
              ),
            ),
            // label: ' LocaleKeys.main_screen_telegram_lable.tr()',
            // labelBackgroundColor: Colors.black.withOpacity(0.4),
            // labelStyle: TextStyle(fontSize: 14.sp, color: Colors.white),
            backgroundColor: Colors.white,
            child: GestureDetector(
              onTap: () {
                openCloseDial.value = false;
                handleAddButton(2);

                // AppConstance.launchApp(AppStrings.telegramUrl);
              },
              child: Container(
                height: 40.h,
                width: 40.w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/pitch.png'))),
              ),
            )),
        SpeedDialChild(
            shape: CircleBorder(
              side: BorderSide(
                color: Colors.white,
              ),
            ),
            backgroundColor: Colors.white,
            labelWidget: Container(
              color: Colors.transparent,
              child: Text(
                'منشور جديد',
                style: GoogleFonts.tajawal(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500),
              ),
            ),
            child: GestureDetector(
              onTap: () {
                openCloseDial.value = false;
                handleAddButton(3);
              },
              child: Container(
                height: 40.h,
                width: 40.w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/post.png'))),
              ),
            ))
      ],
    );
  }
}
