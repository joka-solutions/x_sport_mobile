import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_sport/main.dart';
import 'package:x_sport/presentation/screens/profile_screen.dart';
import '../../../../core/constance/app_constance.dart';

class ProfileAppBarComponent extends StatelessWidget
    implements PreferredSizeWidget {
  final bool isProfile;
  const ProfileAppBarComponent({super.key, this.isProfile = false});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // toolbarHeight: 100.h,
      backgroundColor: Color(0xFFF6F7F9),
      surfaceTintColor: Color(0xFFF6F7F9),
      automaticallyImplyLeading: false,
      elevation: 0,
      flexibleSpace: Container(
        alignment: Alignment.bottomCenter,
        color: Color(0xFFF6F7F9),
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                isProfile
                    ? Navigator.of(navigatorKey.currentContext!).push(
                        MaterialPageRoute(
                            builder: (context) => ProfileScreen()),
                      )
                    : Scaffold.of(context).openDrawer();
              },
              child: Container(
                height: 40.w,
                width: 40.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.sp),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF000000).withOpacity(0.1),
                      blurRadius: 6.sp,
                      offset: Offset(0, 4.w),
                    ),
                  ],
                ),
                child: Icon(
                  isProfile ? Icons.person_outline : Icons.menu,
                  size: 28.sp,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 18.w),
              child: Container(
                width: 153.w,
                height: 30.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17.sp),
                    border: Border.all(color: XColors.Background_Color1)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(Icons.verified),
                    Text(
                      'حساب بريميوم',
                      style: GoogleFonts.tajawal(
                        textStyle: TextStyle(
                            color: XColors.Background_Color1,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 43.w,
                        height: 43.w,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: XColors.circle_border_color,
                                width: 0.5.w)),
                        child: Icon(
                          Icons.notifications_outlined,
                          size: 30.sp,
                        ),
                      ),
                      Positioned(
                        right: 0.w,
                        bottom: 3.w,
                        child: Container(
                          width: 13.w,
                          height: 13.w,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFF44336),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 10.w),
                  Stack(
                    children: [
                      Container(
                        width: 43.w,
                        height: 43.w,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(
                                color: XColors.circle_border_color,
                                width: 0.5.w)),
                        child: Icon(Icons.message_outlined, size: 24.sp),
                      ),
                      Positioned(
                        right: 0.w,
                        bottom: 3.w,
                        child: Container(
                          width: 13.w,
                          height: 13.w,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFF44336),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(48.h);
}
