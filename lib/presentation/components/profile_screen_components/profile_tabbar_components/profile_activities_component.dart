import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_sport/data/dtos/user_dto/user_dto.dart';
import 'package:x_sport/presentation/components/profile_screen_components/profile_tabbar_components/activity_prefrences_component.dart';

import '../../../../core/constance/app_constance.dart';
import '../../../painters/dotted_line_pianter.dart';
import '../../../widgets/buttons/submit_button.dart';
import '../../../widgets/rectangle_container.dart';

class ProfileActivitiesComponent extends StatelessWidget {
  final List<FavoritSport> favoritSports;
  ProfileActivitiesComponent({super.key, required this.favoritSports});
  final ValueNotifier<int> selectedIndex = ValueNotifier<int>(0);

  final List<Map<String, dynamic>> levels = [
    {
      'points': '5000 xp points',
      'level': 'متمرس',
    },
    {
      'points': '3000 xp points',
      'level': 'هاو',
    },
    {
      'points': '1000 xp points',
      'level': 'مبتدئ',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Directionality(
          textDirection: TextDirection.rtl,
          child: SizedBox(
            height: 100.h,
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 114.w,
                mainAxisExtent: 40.h,
                crossAxisSpacing: 14.0.w,
                mainAxisSpacing: 20.0.w,
              ),
              itemCount:
                  favoritSports!.length + 1, // Add 1 for the "Add" button
              itemBuilder: (context, index) {
                if (index < favoritSports.length) {
                  // Render the regular item

                  return ValueListenableBuilder(
                      valueListenable: selectedIndex,
                      builder: (context, isSelected, child) {
                        final isSelected = selectedIndex.value == index;
                        final Color selectedText = isSelected
                            ? Colors.white
                            : XColors.Submit_Button_Color;
                        final Color selectedButton = isSelected
                            ? XColors.Submit_Button_Color
                            : Color(0xFFECECFB);
                        return GestureDetector(
                          onTap: () {
                            selectedIndex.value = index;
                          },
                          child: Container(
                            width: 50.w,
                            decoration: BoxDecoration(
                              color: selectedButton,
                              borderRadius: BorderRadius.circular(12.sp),
                              border: Border.all(
                                color: Colors.white,
                                width: 1.0,
                              ),
                            ),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 12.w),
                              alignment: Alignment.center,
                              child: Text(
                                favoritSports![index].name,
                                style: GoogleFonts.tajawal(
                                  textStyle: TextStyle(
                                    color: selectedText,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      });
                } else {
                  // Render the "Add" button for the last index
                  return GestureDetector(
                    onTap: () {
                      // Handle the "Add" button tap
                    },
                    child: DottedBorder(
                      borderType: BorderType.RRect,
                      color: Color(0xFF8E8E8E),
                      radius: Radius.circular(12.sp),
                      strokeWidth: 1.6.w,
                      dashPattern: [7.w],
                      child: Container(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.add,
                          color: Color(0xFF8E8E8E),
                        ),
                      ),
                    ),
                  );
                }
              },
            ),
          ),
        ),
        ValueListenableBuilder(
            valueListenable: selectedIndex,
            builder: (context, value, child) {
              return Column(
                children: [
                  RectangleContainer(
                      bottomMargin: 20,
                      radius: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/images/tennis.png'),
                          Container(
                            height: 149.h,
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  favoritSports![selectedIndex.value].name,
                                  style: GoogleFonts.tajawal(
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                RichText(
                                    text: TextSpan(
                                        text: 'المستوى: ',
                                        style: GoogleFonts.tajawal(
                                          textStyle: TextStyle(
                                              color: Colors.black,
                                              fontSize: 21.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        children: [
                                      TextSpan(
                                        text:
                                            favoritSports![selectedIndex.value]
                                                .level,
                                        style: GoogleFonts.tajawal(
                                          textStyle: TextStyle(
                                              color: Colors.black,
                                              fontSize: 21.sp,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      )
                                    ])),
                                RichText(
                                    text: TextSpan(
                                        text: 'نقاط الخبرة: ',
                                        style: GoogleFonts.tajawal(
                                          textStyle: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        children: [
                                      TextSpan(
                                        text:
                                            favoritSports![selectedIndex.value]
                                                .point
                                                .toString(),
                                        style: GoogleFonts.tajawal(
                                          textStyle: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      )
                                    ])),
                                Container(
                                  alignment: Alignment.center,
                                  width: 120.w,
                                  height: 46.h,
                                  decoration: BoxDecoration(
                                      color: XColors.Submit_Button_Color,
                                      borderRadius:
                                          BorderRadius.circular(20.sp)),
                                  child: Text(
                                    favoritSports![selectedIndex.value].level,
                                    style: GoogleFonts.tajawal(
                                        color: Colors.white,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SubmitButton(
                        minWidth: 150,
                        height: 46,
                        radius: 22,
                        text: 'ابدأ مباراة جديدة',
                        textSize: 18.sp,
                        fillColor: XColors.Submit_Button_Color,
                        onPressed: () {},
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'ابحث عن تحدي جديد',
                            style: GoogleFonts.tajawal(
                              textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Text(
                            'احجز مباراة جديدة او ابحث عن خصم جديد!',
                            style: GoogleFonts.tajawal(
                              textStyle: TextStyle(
                                  color: Color(0xFF2E2E2E),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20.w),
                  RectangleContainer(
                      bottomMargin: 20,
                      borderWidth: 1,
                      borderColor: 0xFFD9D9D9,
                      radius: 20,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.w),
                        child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: levels.length,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  SizedBox(
                                    height: 40.h,
                                    child: CustomPaint(
                                      size: Size(1.sw, 1.w),
                                      painter: DottedLinePainter(),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20.w),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          levels[index]['points'],
                                          style: GoogleFonts.tajawal(
                                              fontSize: 16.sp,
                                              color: Color(0xFF2C2C2C)),
                                        ),
                                        Text(
                                          levels[index]['level'],
                                          style: GoogleFonts.tajawal(
                                              fontSize: 15.sp,
                                              color: Color(0xFF1B1B1B)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            }),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 18.w,
                        width: 18.w,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0xFF40CF91),
                            )
                          ],
                          color: Color(0xFF40CF91),
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(width: 20.w),
                      Text(
                        'تفضيلات اللاعب',
                        style: GoogleFonts.tajawal(
                            fontSize: 22.sp, color: Color(0xFF1B1B1B)),
                      )
                    ],
                  ),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount:
                        favoritSports[selectedIndex.value].preferences!.length,
                    itemBuilder: (context, index) {
                      // Create a separate ValueNotifier for each dropdown
                      ValueNotifier<String?> selectedValue =
                          ValueNotifier<String?>(null);
                      return ActivityPreferncesComponent(
                        index: index,
                        preferences:
                            favoritSports[selectedIndex.value].preferences!,
                        initialValue: favoritSports[selectedIndex.value]
                            .preferences![index]
                            .options[selectedIndex.value]
                            .name,
                      );
                    },
                  ),
                ],
              );
            }),
      ],
    );
  }
}
