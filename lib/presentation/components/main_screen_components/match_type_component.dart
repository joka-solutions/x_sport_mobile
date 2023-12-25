import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_sport/core/constance/app_constance.dart';

class MatchTypeComponent extends StatelessWidget {
  const MatchTypeComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> matchTypes = [
      {
        'title': 'مباراة ودية',
        'subtitle': 'سيتم نشر اعلانك ليظهر عند منافسين يبحثون عن مباريات ودية',
        'image': 'assets/images/friendly_match.png',
      },
      {
        'title': 'مباراة تنافسية',
        'subtitle':
            'سيتم نشر اعلانك ليظهر عند منافسين يبحثون عن مباريات تنافسية',
        'image': 'assets/images/comp_match.png',
      },
    ];

    final ValueNotifier<int?> isSelectedIndex = ValueNotifier<int?>(null);
    return ListView.builder(
        shrinkWrap: true,
        itemCount: matchTypes.length,
        itemBuilder: (context, index) {
          return ValueListenableBuilder(
            valueListenable: isSelectedIndex,
            builder: (context, selectedIndex, child) {
              final isSelected = index == selectedIndex;

              return Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: MaterialButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    isSelectedIndex.value = index;
                  },
                  elevation: 0,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                        color: isSelected
                            ? XColors.Submit_Button_Color
                            : Color(0xFF828282),
                        width: isSelected ? 1.5.w : 1.w),
                    borderRadius: BorderRadius.circular(15.sp),
                  ),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 12.0.w),
                          child: SizedBox(
                            width: 0.70.sw,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  matchTypes[index]['title'],
                                  style: GoogleFonts.tajawal(
                                    height: 2.2.w,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  matchTypes[index]['subtitle'],
                                  textAlign: TextAlign.end,
                                  style: GoogleFonts.tajawal(
                                    height: 2.2.w,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF959595),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 60.w,
                          width: 60.w,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                            matchTypes[index]['image'],
                          ))),
                        )
                      ]),
                ),
              );
            },
          );
        });
  }
}
