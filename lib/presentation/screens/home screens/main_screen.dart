import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/presentation/screens/home%20screens/academies_screen.dart';
import 'package:x_sport/presentation/screens/home%20screens/play_screen.dart';
import 'package:x_sport/presentation/screens/match_reservation_screen.dart';
import 'package:x_sport/presentation/widgets/buttons/submit_button.dart';
import '../../../main.dart';
import '../../components/main_screen_components/match_type_component.dart';
import '../../components/main_screen_components/options_component.dart';
import '../empty_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  ValueNotifier _selectedIndex = ValueNotifier(4);
  ValueNotifier optionsHandler = ValueNotifier(0);

  List<Widget> screens = [
    EmptyScreen(),
    EmptyScreen(),
    EmptyScreen(),
    AcademiesScreen(),
    PlayScreen(),
  ];
  bool isContainerVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: ValueListenableBuilder(
            valueListenable: optionsHandler,
            builder: (context, value, child) {
              return optionsHandler.value == 1
                  ? Container(
                      height: 0.52.sh,
                      padding: EdgeInsets.only(left: 10, top: 18, right: 10),
                      decoration: BoxDecoration(
                        color: Colors.white, // Adjust color as needed
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(12.sp),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.15),
                            blurRadius: 20.sp,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                ':حدد نوع المباراة التي تريد',
                                style: GoogleFonts.tajawal(
                                  height: 2.2.w,
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(width: 10.w),
                              GestureDetector(
                                  onTap: () {
                                    optionsHandler.value = 0;
                                  },
                                  child: Icon(
                                    Icons.close,
                                    size: 40.sp,
                                    color: Colors.black,
                                  ))
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                right: 10.w, top: 10.w, bottom: 10.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 0.8.sw,
                                  child: RichText(
                                      textAlign: TextAlign.end,
                                      text: TextSpan(
                                          text:
                                              'سيتم نشر اعلان انك تبحث عن خصم لمواجهته\n',
                                          style: GoogleFonts.tajawal(
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF959595),
                                          ),
                                          children: [
                                            TextSpan(
                                              text: 'x sport في مجتمع',
                                              style: GoogleFonts.tajawal(
                                                fontSize: 18.sp,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xFF959595),
                                              ),
                                            ),
                                          ])),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Icon(
                                  Icons.warning_rounded,
                                  size: 20.sp,
                                  color: Colors.black,
                                )
                              ],
                            ),
                          ),
                          MatchTypeComponent(),
                          SubmitButton(
                              radius: 6,
                              height: 28.w,
                              minWidth: 170.w,
                              fillColor: XColors.Submit_Button_Color,
                              text: 'التالي',
                              onPressed: () {
                                Navigator.of(navigatorKey.currentContext!).push(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          MatchReservationScreen()),
                                );
                              }),
                        ],
                      ),
                    )
                  : ValueListenableBuilder(
                      valueListenable: _selectedIndex,
                      builder: (context, selectedIndex, child) {
                        return Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.15),
                                offset: Offset(0, -3.w),
                                spreadRadius: 4.sp,
                                blurRadius: 20.sp,
                              ),
                            ],
                          ),
                          child: ConvexAppBar(
                            cornerRadius: 18.sp,
                            elevation: 0.5,
                            // shadowColor: Color(0xFF000000).withOpacity(0.15.sp),
                            // height: 0.0.sh,
                            items: [
                              TabItem(
                                  icon: Icon(
                                    Icons.search_sharp,
                                    size: 30.sp,
                                    color: XColors.otp_field_border_color,
                                  ),
                                  activeIcon: Icon(
                                    Icons.search_sharp,
                                    size: 32.sp,
                                    color: XColors.Submit_Button_Color,
                                  ),
                                  title: 'ابحث'),
                              TabItem(
                                icon: Icon(
                                  Icons.language,
                                  size: 30.sp,
                                  color: XColors.otp_field_border_color,
                                ),
                                activeIcon: Icon(
                                  Icons.language,
                                  size: 30.sp,
                                  color: XColors.Submit_Button_Color,
                                ),
                                title: 'المجتمع',
                              ),
                              TabItem(icon: OptionsButtonComponent(
                                handleAddButton: (int index) {
                                  optionsHandler.value = index;
                                },
                              )),
                              TabItem(
                                icon: Icon(
                                  Icons.telegram_outlined,
                                  size: 30.sp,
                                  color: XColors.otp_field_border_color,
                                ),
                                activeIcon: Icon(
                                  Icons.telegram_outlined,
                                  size: 30.sp,
                                  color: XColors.Submit_Button_Color,
                                ),
                                title: 'الاكاديمية',
                              ),
                              TabItem(
                                icon: Icon(
                                  Icons.sports_basketball_outlined,
                                  size: 30.sp,
                                  color: XColors.otp_field_border_color,
                                ),
                                activeIcon: Icon(
                                  Icons.sports_basketball_outlined,
                                  size: 30.sp,
                                  color: XColors.Submit_Button_Color,
                                ),
                                title: 'العب',
                              ),
                            ],

                            activeColor: XColors.Submit_Button_Color,
                            backgroundColor: Colors.white,
                            initialActiveIndex: 4,
                            height: 0.07.sh,
                            top: -14,
                            curveSize: 60,

                            style: TabStyle.fixedCircle,
                            color: XColors.otp_field_border_color,
                            onTap: (int i) {
                              if (selectedIndex == 2) {
                                return;
                              }
                              _selectedIndex.value = i;
                              // Toggle the visibility of the container when a tab is tapped
                            },
                          ),
                        );
                      },
                    );
            }),
        body: Stack(
          children: [
            ValueListenableBuilder(
                valueListenable: _selectedIndex,
                builder: (context, selectedIndex, child) {
                  return screens.elementAt(_selectedIndex.value);
                }),
            ValueListenableBuilder(
              valueListenable: optionsHandler,
              builder: (context, value, child) {
                return optionsHandler.value != 0
                    ? GestureDetector(
                        onTap: () {
                          optionsHandler.value = 0;
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.black
                                .withOpacity(0.6), // Adjust color as needed
                          ),
                        ),
                      )
                    : SizedBox.shrink();
              },
            ),
          ],
        ));
  }
}
