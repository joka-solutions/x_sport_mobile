import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:x_sport/core/constance/app_constance.dart';

class ProgramDatesComponent extends StatelessWidget {
  final List<String> dayMaps = ['sun', 'mon', 'tus', 'wed', 'thu', 'fri'];

  final List<String> ages = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];

  final ValueNotifier<String> selectedAge = ValueNotifier<String>('Item 1');

  final ValueNotifier<int?> isSelectedIndex = ValueNotifier<int?>(null);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          height: 50.h,
          // width: 0.5.sw,
          child: ListView.builder(
            shrinkWrap: true,
            reverse: true,
            scrollDirection: Axis.horizontal,
            // itemExtent: 40.w,
            itemCount: dayMaps.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.w),
                child: ValueListenableBuilder<int?>(
                  valueListenable: isSelectedIndex,
                  builder: (context, selectedIndex, child) {
                    final isSelected = index == selectedIndex;
                    return GestureDetector(
                      onTap: () {
                        isSelectedIndex.value = index;
                      },
                      child: Container(
                        width: 44.w,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: isSelected
                                ? XColors.Submit_Button_Color
                                : Color(0xFFD1DBF6),
                            border: Border.all(color: Color(0xFFE5E5E5)),
                            borderRadius: BorderRadius.circular(7.sp)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${dayMaps[index]}',
                              style: GoogleFonts.tajawal(
                                  fontSize: 13.sp,
                                  color: isSelected
                                      ? Colors.white
                                      : Color(0xFF7373AD),
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
        SizedBox(width: 6.w),
        Container(
          height: 30.h,
          width: 0.5.w,
          color: Color(0xFF969696),
        ),
        SizedBox(width: 6.w),
        ValueListenableBuilder<String>(
          valueListenable: selectedAge,
          builder: (context, selectedValue, child) {
            return Container(
              width: 112.w,
              height: 50.h,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color(0xFFCFCFCF),
                ),
                borderRadius: BorderRadius.circular(8.sp),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 8,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: DropdownButtonFormField<String>(
                    value: selectedValue,
                    style: GoogleFonts.tajawal(
                        height: 1.8.w,
                        fontSize: 16.sp,
                        color: Color(0xFF616161),
                        fontWeight: FontWeight.w500),
                    icon: Icon(
                      Icons.keyboard_arrow_down_sharp,
                      color: Color(0xFF616161),
                    ),
                    iconSize: 26.sp,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 12.h,
                        horizontal: 16.w,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.sp),
                        borderSide: BorderSide(
                          color: Color(0xFFCFCFCF),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.sp),
                        borderSide: BorderSide(
                          color: Color(0xFFCFCFCF),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.sp),
                        borderSide: BorderSide(
                          color: Color(0xFFCFCFCF),
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.8),
                    ),
                    onChanged: (newValue) {
                      selectedAge.value = newValue!;
                    },
                    items: ages.map((item) {
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Text(item),
                      );
                    }).toList(),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
