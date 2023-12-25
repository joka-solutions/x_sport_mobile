import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constance/app_constance.dart';
import '../../widgets/rectangle_container.dart';

class AcademeiesCategoriesComponent extends StatelessWidget {
  final List<String> items = [
    'كرة قدم',
    'بادل',
    'تنس',
    'لعبة1',
    'غولف',
    'كرة سلة'
  ];
  final ValueNotifier<int> selectedIdx = ValueNotifier<int>(0);
  AcademeiesCategoriesComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 0.04.sw),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemExtent: 90.w,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: ValueListenableBuilder<int>(
              valueListenable: selectedIdx,
              builder: (context, selectedIndex, child) {
                final isSelected = index == selectedIndex;
                return GestureDetector(
                  onTap: () {
                    selectedIdx.value = index;
                  },
                  child: RectangleContainer(
                    radius: 14,
                    containerColor: isSelected
                        ? XColors.Background_Color1
                        : Color(0xFFD1DBF6),
                    bottomMargin: 0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.sports_tennis,
                          color: isSelected ? Colors.white : Color(0xFF7373AD),
                          size: 30.sp,
                        ),
                        Text(
                          items[index],
                          style: GoogleFonts.tajawal(
                            color:
                                isSelected ? Colors.white : Color(0xFF7373AD),
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
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
