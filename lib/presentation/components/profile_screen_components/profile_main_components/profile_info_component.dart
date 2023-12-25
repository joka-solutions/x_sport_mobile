import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/presentation/screens/edit_profile_screen.dart';
import '../../../../core/constance/app_constance.dart';
import '../../../../data/dtos/user_dto/user_dto.dart';
import '../../../widgets/rectangle_container.dart';

class ProfileInfoComponent extends StatelessWidget {
  final User? user;
  final int? points;
  const ProfileInfoComponent(
      {super.key, required this.user, required this.points});

  @override
  Widget build(BuildContext context) {
    return RectangleContainer(
      bottomMargin: 10.h,
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 34.w,
                          height: 34.w,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 0.50, color: Color(0xFF2E5DD7)),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: Icon(
                            Icons.emoji_events,
                            size: 30.sp,
                            color: const Color(0xFF2E5DD7),
                          ),
                        ),
                        SizedBox(width: 17.h),
                        Text(
                          points.toString(),
                          style: TextStyle(
                            color: Color(0xFF2E5DD7),
                            fontSize: 25,
                            fontFamily: 'Tajawal',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 17.h),
                    SizedBox(
                      width: 124.w,
                      height: 26.w,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              width: 92.w,
                              child: Directionality(
                                textDirection: TextDirection.rtl,
                                child: LinearProgressIndicator(
                                  borderRadius: BorderRadius.circular(8.0.sp),
                                  valueColor:
                                      const AlwaysStoppedAnimation<Color>(
                                    Color(0xFF2E5DD7),
                                  ),
                                  value: 0.2,
                                  minHeight: 10.h,
                                  color: const Color(0xFF2E5DD7),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                alignment: Alignment.center,
                                width: 25.w,
                                height: 25.w,
                                decoration: const BoxDecoration(
                                    color: Color(0xFFECEBEB),
                                    shape: BoxShape.circle),
                                child: const Icon(
                                  Icons.keyboard_double_arrow_up_outlined,
                                  color: Color(0xFF2E5DD7),
                                )),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              alignment: Alignment.center,
                              width: 25.w,
                              height: 25.w,
                              decoration: const BoxDecoration(
                                  color: Color(0xFF2E5DD7),
                                  shape: BoxShape.circle),
                              child: Text(
                                '2',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.sp,
                                  fontFamily: 'Tajawal',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ]),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    user!.name,
                    style: TextStyle(
                      color: const Color(0xFF111C32),
                      fontSize: 16.sp,
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  Text(
                    user!.email,
                    style: TextStyle(
                      color: Color(0xFF7E7E7E),
                      fontSize: 10,
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  const Text(
                    'الموقع الجغرافي',
                    style: TextStyle(
                      color: Color(0xFF7E7E7E),
                      fontSize: 10,
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size(50.w, 30.h),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        alignment: Alignment.centerLeft),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditProfileScreen()));
                    },
                    child: Text(
                      'تعديل الملف الشخصي',
                      style: TextStyle(
                        color: const Color(0xFF2E5DD7),
                        fontSize: 12.sp,
                        fontFamily: 'Tajawal',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  )
                ],
              ),
              Container(
                alignment: Alignment.center,
                width: 74.w,
                height: 74.w,
                decoration: ShapeDecoration(
                  // image: DecorationImage(image: NetworkImage(user!.image)),
                  color: XColors.Background_Color1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(11),
                  ),
                ),
                child: Text(
                  'BA',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35.sp,
                    fontFamily: 'Tajawal',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 6.w,
            right: 68.w,
            width: 25.sp,
            height: 25.sp,
            child: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    color: Color(0xFFECEBEB), shape: BoxShape.circle),
                child: Icon(
                  Icons.edit,
                  color: const Color(0xFF2E5DD7),
                  size: 18.sp,
                )),
          )
        ],
      ),
    );
  }
}
