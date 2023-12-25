import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_sport/core/constance/app_functions.dart';
import 'package:x_sport/core/utils/enums.dart';
import 'package:x_sport/main.dart';
import 'package:x_sport/presentation/components/core/intrinsic_height_component.dart';
import 'package:x_sport/presentation/controllers/fileds_bloc.dart';
import 'package:x_sport/presentation/controllers/user_bloc/user_bloc.dart';
import 'package:x_sport/presentation/controllers/user_bloc/user_event.dart';
import 'package:x_sport/presentation/controllers/user_bloc/user_state.dart';
import 'package:x_sport/presentation/screens/otp_screen.dart';
import 'package:x_sport/presentation/screens/sign_in_screen.dart';

import '../../core/constance/app_constance.dart';
import '../widgets/buttons/submit_button.dart';
import '../widgets/text_fields/textfield_widget.dart';
import 'welcome_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController name = TextEditingController();

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  TextEditingController confirmPassword = TextEditingController();

  TextEditingController phone = TextEditingController();

  var isChecked = ValueNotifier(false);
  @override
  void initState() {
    getUserLocation();
    super.initState();
  }

  getUserLocation() async {
    await registerStream.updateLocation();
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeightComponent(
      title: 'انشاء الحساب',
      child: SizedBox(
        width: 329.w,
        height: 1.sh,
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFieldWidget(
                labelText: 'الاسم الكامل',
                controller: name,
                keyboardType: TextInputType.emailAddress,
                textStream: registerStream.name,
                onChanged: registerStream.changeName,
              ),
              TextFieldWidget(
                labelText: 'البريد الالكتروني',
                controller: email,
                keyboardType: TextInputType.emailAddress,
                textStream: registerStream.email,
                onChanged: registerStream.changeEmail,
              ),
              TextFieldWidget(
                labelText: 'كلمة المرور',
                controller: password,
                keyboardType: TextInputType.name,
                textStream: registerStream.password,
                onChanged: registerStream.changePassword,
                isObscureText: true,
              ),
              TextFieldWidget(
                labelText: 'تأكيد كلمة المرور',
                controller: confirmPassword,
                keyboardType: TextInputType.emailAddress,
                textStream: registerStream.confPassword,
                onChanged: registerStream.changeConfPassword,
                isObscureText: true,
              ),
              TextFieldWidget(
                labelText: 'رقم الموبايل',
                controller: phone,
                keyboardType: TextInputType.number,
                textStream: registerStream.phone,
                onChanged: registerStream.changePhone,
              ),
              Container(
                height: 50.h,
                width: 0.83.sw,
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(right: 10),
                margin: EdgeInsets.only(top: 34.0.h),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.sp),
                    border:
                        Border.all(color: XColors.Field_Color1, width: 0.5.w)),
                child: const Text('تفعيل الموقع الجغرافي'),
              ),
              SizedBox(height: 10.h),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Text(
                  textAlign: TextAlign.end,
                  'اوافق على شروط الاستخدام والخصوصية',
                  style: GoogleFonts.tajawal(
                    textStyle: TextStyle(
                        color: XColors.Outline_Button_Color,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Expanded(
                  child: ValueListenableBuilder(
                      valueListenable: isChecked,
                      builder: (context, value, child) {
                        return Transform.scale(
                          scale: 0.9.w,
                          child: Checkbox(
                            activeColor: XColors.Background_Color2,
                            value: isChecked.value,
                            onChanged: (value) {
                              isChecked.value = !isChecked.value;
                              registerStream.changePrivacy(value!);
                            },
                          ),
                        );
                      }),
                ),
              ]),
              SizedBox(height: 8.h),
              StreamBuilder(
                stream: registerStream.registerIsValid,
                builder: (context, snapshot) {
                  final isButtonEnabled = snapshot.data ?? false;
                  return SubmitButton(
                    isButtonEnabled: isButtonEnabled,
                    fillColor: isButtonEnabled
                        ? XColors.Submit_Button_Color
                        : Colors.grey,
                    textColor: Colors.white,
                    text: 'انشاء حساب',
                    onPressed: () {
                      EasyLoadingInit.startLoading();
                      Future.delayed(Duration(seconds: 2), () {
                        EasyLoading.dismiss();
                        Navigator.of(navigatorKey.currentContext!).push(
                          MaterialPageRoute(builder: (context) => OtpScreen()),
                        );
                      });
                      // context.read<UserBloc>().add(const SignUpEvent());
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
