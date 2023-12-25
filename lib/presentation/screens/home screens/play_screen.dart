import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../components/play_screen_components/banner_component.dart';
import '../../components/profile_screen_components/profile_main_components/profile_appbar_component.dart';
import '../../painters/play_types_painter.dart';
import '../../widgets/buttons/submit_button.dart';
import '../../widgets/rectangle_container.dart';

class PlayScreen extends StatelessWidget {
  PlayScreen({super.key});
  final List<Map<String, dynamic>> matches = [
    {
      'title': 'المباريات التنافسية',
      'subtitle': 'العب مباريات تنافسية قريبة واكسب نقط اكثر!',
      'image': 'friendly.png',
    },
    {
      'title': 'المباريات الودية',
      'subtitle': 'العب مباريات ودية قريبة منك!',
      'image': 'matches.png',
    },
    {
      'title': 'الدوريات',
      'subtitle': 'اطلع على نتائج الدوريات المقامة واشترك في دوريات قادمة',
      'image': 'leagues.png',
    },
    {
      'title': 'البطولات',
      'subtitle': 'اطلع على نتائج البطولات المقامة واشترك في بطولات قادمة',
      'image': 'friendly.png',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xFFF6F7F9),
      appBar: ProfileAppBarComponent(
        isProfile: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 40.h),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 6.w),
              const BannerComponent(),
              Container(
                height: 0.484.sh,
                margin: EdgeInsets.only(right: 24.w, bottom: 12.h),
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return CustomPaint(
                      painter: PlayTypesPainter(),
                      size: Size(215.w, 213.h),
                      child: Container(
                        padding: EdgeInsets.only(top: 34.h, right: 14.w),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    matches[index]['title'],
                                    textAlign: TextAlign.end,
                                    style: GoogleFonts.tajawal(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF2A2A2A),
                                    ),
                                  ),
                                  SizedBox(width: 20.w),
                                  SizedBox(
                                    height: 30.w,
                                    width: 30.w,
                                    child: Image.asset(
                                      'assets/images/play/${matches[index]['image']}',
                                      fit: BoxFit.fill,
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 26.w),
                                width: 138.w,
                                child: Text(
                                  matches[index]['subtitle'],
                                  textAlign: TextAlign.end,
                                  style: GoogleFonts.tajawal(
                                    fontSize: 13.sp,
                                    color: Color(0xFF898989),
                                  ),
                                ),
                              ),
                            ]),
                      ),
                    );
                  },
                ),
              ),
              RectangleContainer(
                bottomMargin: 0,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 20.h, horizontal: 110.w),
                  child: Column(
                    children: [
                      Text(
                        'الملاعب القريبة منك',
                        style: GoogleFonts.tajawal(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF4B4B4B),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      SubmitButton(
                        minWidth: 180,
                        height: 40,
                        onPressed: () {},
                        text: 'نظم حجز',
                        textSize: 15,
                        fillColor: Color(0xFF2492F8),
                        radius: 12,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
