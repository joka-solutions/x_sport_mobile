import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_sport/core/constance/app_constance.dart';

import '../controllers/fileds_bloc.dart';
import '../widgets/buttons/edit_button.dart';
import '../widgets/text_fields/no_border_textfield_widget.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.done,
                size: 36.sp,
                color: XColors.Submit_Button_Color,
              )),
          actions: [
            Row(
              children: [
                Text(
                  'تعديل الملف الشخصي',
                  style: GoogleFonts.tajawal(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.close,
                      size: 36.sp,
                    ))
              ],
            )
          ]),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: 0.96.sw,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 4.h),
                  alignment: Alignment.center,
                  height: 94.w,
                  width: 94.w,
                  decoration: BoxDecoration(
                      color: XColors.Background_Color1, shape: BoxShape.circle),
                  child: Text(
                    'BA',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.tajawal(
                      height: 0,
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 35.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: Size(50.w, 30.h),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      alignment: Alignment.centerLeft),
                  onPressed: null,
                  child: Text(
                    'تغيير الصورة الشخصية',
                    style: TextStyle(
                      color: const Color(0xFF2E5DD7),
                      fontSize: 16.sp,
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
                NoBorderTextFieldWidget(
                  labelText: 'الاسم',
                  controller: name,
                  keyboardType: TextInputType.emailAddress,
                  textStream: editProfileStream.name,
                  onChanged: editProfileStream.changeName,
                  hintText: 'اسم_المستخدم',
                ),
                NoBorderTextFieldWidget(
                  labelText: 'رقم الموبايل',
                  controller: phone,
                  keyboardType: TextInputType.emailAddress,
                  textStream: editProfileStream.name,
                  onChanged: editProfileStream.changeName,
                  hintText: '0965410145',
                ),
                EditButton(
                  labelText: 'الموقع الجغرافي',
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: Size(50.w, 30.h),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            alignment: Alignment.centerLeft),
                        onPressed: null,
                        child: Text(
                          'تغيير',
                          style: TextStyle(
                            color: const Color(0xFFF44336),
                            fontSize: 16.sp,
                            fontFamily: 'Tajawal',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                      Text(
                        'الموقع الجغرافي',
                        style: GoogleFonts.tajawal(
                          textStyle: TextStyle(
                              color: XColors.Background_Color1,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
                EditButton(
                  labelText: 'الالعاب',
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: Size(50.w, 30.h),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            alignment: Alignment.centerLeft),
                        onPressed: null,
                        child: Text(
                          'حذف او اضافة',
                          style: TextStyle(
                            color: const Color(0xFFF44336),
                            fontSize: 16.sp,
                            fontFamily: 'Tajawal',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 38.h,
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.only(left: 4.w),
                                alignment: Alignment.center,
                                width: 75.w,
                                decoration: BoxDecoration(
                                  color: XColors.Background_Color1,
                                  borderRadius: BorderRadius.circular(10.sp),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 1.0,
                                  ),
                                ),
                                child: Text(
                                  textAlign: TextAlign.end,
                                  'تنس',
                                  style: GoogleFonts.tajawal(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                ),
                EditButton(
                  labelText: 'الجنس',
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: Size(50.w, 30.h),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            alignment: Alignment.centerLeft),
                        onPressed: null,
                        child: Text(
                          'تغيير',
                          style: TextStyle(
                            color: const Color(0xFFF44336),
                            fontSize: 16.sp,
                            fontFamily: 'Tajawal',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                      Text(
                        'ذكر',
                        style: GoogleFonts.tajawal(
                          textStyle: TextStyle(
                              color: XColors.Background_Color1,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 0.92.sw,
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size(50.w, 30.h),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        alignment: Alignment.centerLeft),
                    onPressed: null,
                    child: Text(
                      'ترقية حسابك (نسخة بريميوم)',
                      style: TextStyle(
                        color: const Color(0xFF2E5DD7),
                        fontSize: 16.sp,
                        fontFamily: 'Tajawal',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
