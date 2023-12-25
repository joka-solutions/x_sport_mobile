import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ReservationStadiumsComponent extends StatelessWidget {
  final ValueNotifier<int> selectedIdx = ValueNotifier<int>(0);

  ReservationStadiumsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170.h,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 2.w),
        reverse: true,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemExtent: 190.w,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 6.w),
            child: GestureDetector(
              onTap: () {
                selectedIdx.value = index;
              },
              child: Container(
                height: 32.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4,
                          offset: Offset(0, 4.w))
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.sp)),
                child: Column(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12.sp),
                                topRight: Radius.circular(12.sp)),
                            image: DecorationImage(
                                image: AssetImage('assets/images/stadium.png'),
                                fit: BoxFit.fill)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(right: 10.w),
                        alignment: Alignment.centerRight,
                        child: Text(
                          'اسم الملعب',
                          style: GoogleFonts.tajawal(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
