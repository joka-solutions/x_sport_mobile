import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constance/app_constance.dart';
import '../../widgets/rectangle_container.dart';

class ReservationSportsComponent extends StatelessWidget {
  final List<String> items = [
    'كرة قدم',
    'بادل',
    'تنس',
    'غولف',
    'كرة سلة',
    'لعبة1',
  ];
  final ValueNotifier<int> selectedIdx = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42.h,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 0.04.sw),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemExtent: 90.w,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.w),
            child: ValueListenableBuilder<int>(
              valueListenable: selectedIdx,
              builder: (context, selectedIndex, child) {
                final isSelected = index == selectedIndex;
                return GestureDetector(
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
                        color: isSelected
                            ? XColors.Submit_Button_Color
                            : Color(0xFFECECFB),
                        borderRadius: BorderRadius.circular(16.sp)),
                    child: Text(
                      items[index],
                      style: GoogleFonts.tajawal(
                        color: isSelected ? Colors.white : Color(0xFF7373AD),
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
