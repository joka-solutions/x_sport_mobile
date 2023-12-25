import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/presentation/widgets/buttons/rectangle_button.dart';
import 'package:x_sport/presentation/widgets/rectangle_container.dart';

import '../../../../data/dtos/user_dto/user_dto.dart';
import '../../../painters/dotted_line_pianter.dart';
import '../../../widgets/buttons/submit_button.dart';
import '../profile_tabbar_components/profile_activities_component.dart';
import '../profile_tabbar_components/profile_society_component.dart';

class ProfileTabBarComponent extends StatefulWidget {
  final List<FavoritSport>? favoritSports;
  ProfileTabBarComponent({super.key, this.favoritSports});

  @override
  State<ProfileTabBarComponent> createState() => _ProfileTabBarComponentState();
}

class _ProfileTabBarComponentState extends State<ProfileTabBarComponent>
    with SingleTickerProviderStateMixin {
  late TabController tabBar;
  final ValueNotifier<int> selectedIndex = ValueNotifier<int>(0);

  List<String> items = [
    'تنس',
    'بادل',
  ];
  List<Map<String, dynamic>> levels = [
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
  List<Map<String, dynamic>> prefernces = [
    {
      'title': 'اليد المفضلة',
      'image': 'hand.png',
    },
    {
      'title': 'المركز المفضل',
      'image': 'position.png',
    },
    {
      'title': 'الوقت المفضل ل اللعب',
      'image': 'time.png',
    }
  ];
  final ValueNotifier<String?> selectedValue = ValueNotifier<String?>(null);

  @override
  void initState() {
    tabBar = TabController(vsync: this, length: 2);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(widget.favoritSports![0].name);
    return Column(
      children: [
        RectangleContainer(
          bottomMargin: 10,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: SizedBox(
              height: 54.h,
              child: Stack(
                children: [
                  TabBar(
                      splashBorderRadius: BorderRadius.circular(14.sp),
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: XColors.Submit_Button_Color,
                                  width: 4.sp))),
                      controller: tabBar,
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Tajawal',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                      unselectedLabelStyle: TextStyle(
                        color: Color(0xFF8F8F8F),
                      ),
                      tabs: [
                        Tab(
                          text: 'المجتمع',
                        ),
                        Tab(
                          text: 'الانشطة',
                        ),
                      ]),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 0.3.w,
                      height: 40.h,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 0.021.sh),
        SizedBox(
          height: 0.68.sh,
          child: TabBarView(controller: tabBar, children: [
            ProfileSocietyComponent(),
            SingleChildScrollView(
              child: Column(
                children: [
                  ProfileActivitiesComponent(
                      favoritSports: widget.favoritSports!),
                  DottedBorder(
                      borderType: BorderType.RRect,
                      radius: Radius.circular(12.sp),
                      strokeWidth: 1.4.w,
                      dashPattern: [10.w, 9],
                      color: Color(0xFF3D3D3D),
                      child: SizedBox(
                        width: 1.sw,
                        height: 230.h,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'انشئ مجتمعك المصغر',
                              style: GoogleFonts.tajawal(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20.sp,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 0.56.sw,
                              child: Text(
                                'قم بانشاء مجموعة من اصدقائك اللاعبين المتعطشين للمنافسة',
                                style: GoogleFonts.tajawal(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18.sp,
                                    color: Color(0xFF4B4B4B)),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SubmitButton(
                                radius: 7,
                                height: 49,
                                minWidth: 220,
                                fillColor: XColors.Submit_Button_Color,
                                text: 'مجموعة جديدة',
                                textSize: 19.sp,
                                onPressed: () {}),
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 220.h,
                  )
                ],
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
