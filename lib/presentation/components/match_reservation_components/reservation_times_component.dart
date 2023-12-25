import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/presentation/widgets/rectangle_container.dart';

class ReservationTimesComponent extends StatelessWidget {
  ReservationTimesComponent({super.key});
  final ValueNotifier<int?> isSelectedIndex = ValueNotifier<int?>(null);

  final List<String> items = [
    '8:00 AM',
    '9:00 AM',
    '10:00 AM',
    '11:00 AM',
    '12:00 PM',
    '13:00 PM',
    '14:00 PM',
    '15:00 PM',
    '16:00 PM',
    '17:00 PM',
    '18:00 PM',
    '19:00 PM',
    '20:00 PM',
    '21:00 PM',
    '22:00 PM',
  ];

  @override
  Widget build(BuildContext context) {
    return RectangleContainer(
      radius: 15,
      bottomMargin: 0,
      child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(8.w),
          height: 180.h,
          width: 1.sw,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 36.w,
              crossAxisCount: 5,
              crossAxisSpacing: 12.0.w,
              mainAxisSpacing: 20.0.w,
            ),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ValueListenableBuilder(
                valueListenable: isSelectedIndex,
                builder: (context, selectedIndex, child) {
                  final isSelected = selectedIndex == index;
                  return GestureDetector(
                      onTap: () {
                        isSelectedIndex.value = index;
                      },
                      child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: isSelected ? Colors.black : Colors.white,
                            borderRadius: BorderRadius.circular(4.sp),
                            border: Border.all(
                              color: Color(0xFFB2B2B2),
                              width: 0.5.w,
                            ),
                          ),
                          child: Text(
                            items[index],
                            style: GoogleFonts.tajawal(
                              color: isSelected ? Colors.white : Colors.black,
                              fontSize: 15.sp,
                            ),
                          )));
                },
              );
            },
          )),
    );
  }
}
