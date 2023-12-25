import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import '../../../core/constance/app_constance.dart';

class ReservationDatesComponent extends StatefulWidget {
  @override
  State<ReservationDatesComponent> createState() =>
      _ReservationDatesComponentState();
}

class _ReservationDatesComponentState extends State<ReservationDatesComponent> {
  final List<Map<String, dynamic>> dayMaps = [
    {
      'dayName': 'الاحد',
      'day': '5',
      'MonthName': 'نوفمبر',
    },
    {
      'dayName': 'الاثنين',
      'day': '6',
      'MonthName': 'نوفمبر',
    },
    {
      'dayName': 'الثلاثاء',
      'day': '7',
      'MonthName': 'نوفمبر',
    },
    {
      'dayName': 'الاربعاء',
      'day': '8',
      'MonthName': 'نوفمبر',
    },
    {
      'dayName': 'الخميس',
      'day': '9',
      'MonthName': 'نوفمبر',
    },
    {
      'dayName': 'الجمعة',
      'day': '10',
      'MonthName': 'نوفمبر',
    },
    {
      'dayName': 'السبت',
      'day': '11',
      'MonthName': 'نوفمبر',
    },
  ];

  final ValueNotifier<int?> isSelectedIndex = ValueNotifier<int?>(null);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      width: 1.sw,
      child: ListView.builder(
        shrinkWrap: true,
        reverse: true,
        scrollDirection: Axis.horizontal,
        itemExtent: 54.w,
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
                    // width: 32.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: isSelected ? Colors.black : Colors.white,
                        border: Border.all(color: Color(0xFFE5E5E5)),
                        borderRadius: BorderRadius.circular(28.sp)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${dayMaps[index]['dayName']}',
                          style: GoogleFonts.tajawal(
                            fontSize: 12.sp,
                            color: isSelected ? Colors.white : Colors.black,
                          ),
                        ),
                        Text(
                          '${dayMaps[index]['day']}',
                          style: GoogleFonts.tajawal(
                            fontSize: 14.sp,
                            color: isSelected ? Colors.white : Colors.black,
                          ),
                        ),
                        Text(
                          '${dayMaps[index]['MonthName']}',
                          style: GoogleFonts.tajawal(
                            fontSize: 14.sp,
                            color: isSelected ? Colors.white : Colors.black,
                          ),
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
    );
  }
}
