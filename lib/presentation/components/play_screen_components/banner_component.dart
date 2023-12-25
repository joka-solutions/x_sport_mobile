import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'banner_part_component.dart';

class BannerComponent extends StatelessWidget {
  const BannerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 0.18.sh,
      width: 0.88.sw,
      child:
          Stack(alignment: Alignment.center, fit: StackFit.expand, children: [
        BannerPartComponent(
          top: 30.w,
          right: 20.w,
          left: 20.w,
          image: 'Rectangle3.png',
        ),
        BannerPartComponent(
          top: 0,
          right: 10.w,
          left: 10.w,
          image: 'Rectangle2.png',
        ),
        BannerPartComponent(
          top: -10.w,
          right: 0,
          left: 0,
          image: 'Rectangle1.png',
        ),
        Positioned(
          top: 10.w,
          left: 4.w,
          child: Image.asset('assets/images/play/dots.png'),
        ),
        Padding(
          padding: EdgeInsets.only(right: 10.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                child: Container(
                  alignment: Alignment.center,
                  height: 50.w,
                  width: 50.w,
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    size: 22.sp,
                  ),
                ),
              ),
              SizedBox(width: 10.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('X sport بطولات',
                      style: GoogleFonts.tajawal(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                      )),
                  Text('x sport اطلع على البطولات المنظمة من قبل',
                      style: GoogleFonts.tajawal(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      )),
                ],
              ),
            ],
          ),
        )
      ]),
    );
  }
}
