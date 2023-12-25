import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:x_sport/main.dart';
import 'package:x_sport/presentation/screens/home%20screens/main_screen.dart';
import 'package:x_sport/presentation/screens/profile_screen.dart';
import 'package:x_sport/presentation/screens/welcome_screen.dart';

import '../../core/constance/app_constance.dart';
import '../../core/constance/app_functions.dart';
import '../controllers/fileds_bloc.dart';
import '../controllers/user_bloc/user_bloc.dart';
import '../controllers/user_bloc/user_state.dart';
import '../widgets/buttons/submit_button.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController code = TextEditingController();

  StreamController<ErrorAnimationType>? errorController;

  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.h,
        automaticallyImplyLeading: false,
        elevation: 0,
        leadingWidth: 70.w,
        flexibleSpace: Container(
          margin: EdgeInsets.symmetric(
            vertical: 30.h,
          ),
          padding: EdgeInsets.symmetric(horizontal: 15.h),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.sp),
                    color: Colors.white,
                    border: Border.all(color: const Color(0xFFBBBBBB))),
                child: IconButton(
                  iconSize: 30.sp,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back_ios_new_outlined),
                ),
              ),
              SizedBox(width: 84.w),
              Text(
                'تأكيد الحساب',
                style: GoogleFonts.tajawal(
                  textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: 112.w,
              width: 112.w,
              margin: EdgeInsets.only(bottom: 52.h),
              decoration: const BoxDecoration(
                  color: XColors.Background_Color1, shape: BoxShape.circle),
              child: Image.asset('assets/icons/file_lock.png'),
            ),
            Text(
              'قم بادخال رمز التأكيد',
              style: GoogleFonts.tajawal(
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 13.h),
            SizedBox(
              width: 288.w,
              child: Text(
                textAlign: TextAlign.center,
                'ادخل رمز التأكيد الذي قمنا بارساله الى بريدك الالكتروني',
                style: GoogleFonts.tajawal(
                  textStyle: TextStyle(
                      color: XColors.otp_subtitle_color,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Container(
              width: 322.w,
              height: 38.h,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 17.w),
              margin: EdgeInsets.only(top: 40.h, bottom: 43.h),
              decoration: BoxDecoration(
                  color: XColors.otp_field_fill_color,
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(
                      color: XColors.otp_field_border_color, width: 0.5.w)),
              child: Text(
                'fake.email@gmail.com',
                style: GoogleFonts.tajawal(
                  textStyle: TextStyle(
                      color: XColors.otp_subtitle_color,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.05.sw),
                child: PinCodeTextField(
                  appContext: context,
                  textStyle: const TextStyle(
                    color: XColors.otp_field_border_color,
                  ),
                  pastedTextStyle: const TextStyle(
                    color: XColors.otp_field_border_color,
                  ),
                  length: 6,
                  blinkWhenObscuring: true,
                  animationType: AnimationType.fade,
                  validator: (v) {
                    if (v!.length < 6) {
                      return "ادخل رمز صحيح";
                    } else {
                      return null;
                    }
                  },
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(3.sp),
                    fieldHeight: 0.08.sh,
                    fieldWidth: 0.14.sw,
                    borderWidth: 0.7.w,
                    inactiveBorderWidth: 0.7.w,
                    activeBorderWidth: 0.7.w,
                    selectedBorderWidth: 0.7.w,
                    inactiveFillColor: XColors.otp_field_fill_color,
                    errorBorderColor: Colors.transparent,
                    inactiveColor: XColors.otp_field_border_color,
                    activeFillColor: XColors.otp_field_fill_color,
                    activeColor: XColors.otp_field_fill_color,
                    selectedFillColor: XColors.otp_field_fill_color,
                    selectedColor: Colors.white,
                  ),
                  hintStyle: const TextStyle(
                    color: XColors.otp_field_hint_color,
                  ),
                  hintCharacter: '8',
                  cursorColor: Colors.black,
                  animationDuration: const Duration(milliseconds: 300),
                  enableActiveFill: true,
                  errorAnimationController: errorController,
                  controller: code
                    ..selection = TextSelection.collapsed(
                        offset: code.text.length,
                        affinity: TextAffinity.downstream),
                  keyboardType: TextInputType.number,
                  boxShadows: [
                    BoxShadow(
                        offset: Offset(0, 1.sp),
                        color: Colors.black12,
                        blurRadius: 2.sp,
                        spreadRadius: 2.sp)
                  ],
                  onCompleted: (v) {
                    debugPrint("Completed");
                  },
                  onChanged: (value) => registerStream.changecode(value),
                  beforeTextPaste: (text) {
                    debugPrint("Allowing to paste $text");
                    return true;
                  },
                )),
            SizedBox(height: 16.h),
            TextButton(
              style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size(50.w, 30.h),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  alignment: Alignment.centerLeft),
              onPressed: null,
              child: Column(
                children: [
                  Text(
                    'ارسال مرة اخرى',
                    style: TextStyle(
                      color: const Color(0xFF2E5DD7),
                      fontSize: 18.sp,
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  Container(
                    width: 114.w,
                    height: 1,
                    color: const Color(0xFF2E5DD7),
                  )
                ],
              ),
            ),
            SizedBox(height: 56.h),
            StreamBuilder(
                stream: registerStream.registerIsValid,
                builder: (context, snapshot) {
                  final isButtonEnabled = snapshot.data ?? false;

                  return SubmitButton(
                    radius: 24,
                    isButtonEnabled: isButtonEnabled,
                    fillColor: XColors.otp_button_color,
                    minWidth: 210,
                    height: 52,
                    textSize: 18,
                    text: 'تأكيد الحساب',
                    onPressed: () {
                      EasyLoadingInit.startLoading();
                      Future.delayed(Duration(seconds: 2), () {
                        EasyLoading.dismiss();
                        Navigator.of(navigatorKey.currentContext!).push(
                          MaterialPageRoute(
                              builder: (context) => WelcomeScreen()),
                        );
                      });
                    },
                  );
                }),
          ],
        ),
      ),
    );
  }
}
