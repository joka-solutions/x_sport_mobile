import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/core/constance/app_functions.dart';
import 'package:x_sport/main.dart';
import 'package:x_sport/presentation/components/core/intrinsic_height_component.dart';
import 'package:x_sport/presentation/controllers/fileds_bloc.dart';
import 'package:x_sport/presentation/controllers/user_bloc/user_bloc.dart';
import 'package:x_sport/presentation/controllers/user_bloc/user_event.dart';
import 'package:x_sport/presentation/controllers/user_bloc/user_state.dart';
import 'package:x_sport/presentation/screens/sign_up_screen.dart';
import 'package:x_sport/presentation/screens/welcome_screen.dart';
import 'package:x_sport/presentation/widgets/text_fields/textfield_widget.dart';

import '../../core/utils/enums.dart';
import '../widgets/buttons/outlined_button.dart';
import '../widgets/buttons/submit_button.dart';
import '../widgets/buttons/underline_button.dart';
import 'home screens/main_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeightComponent(
      title: 'تسجيل الدخول',
      child: SizedBox(
        width: 329.w,
        child: Column(
          children: [
            TextFieldWidget(
              labelText: 'الرقم / البريد الالكتروني',
              controller: email,
              keyboardType: TextInputType.emailAddress,
              textStream: signInStream.emailPhone,
              onChanged: signInStream.changeEmailPhone,
            ),
            TextFieldWidget(
              labelText: 'كلمة المرور',
              controller: password,
              keyboardType: TextInputType.name,
              textStream: signInStream.password,
              onChanged: signInStream.changePassword,
              isObscureText: true,
            ),
            SizedBox(height: 30.h),
            StreamBuilder(
                stream: signInStream.loginValid,
                builder: (context, snapshot) {
                  final isButtonEnabled = snapshot.data ?? false;
                  return SubmitButton(
                    isButtonEnabled: isButtonEnabled,
                    fillColor: isButtonEnabled
                        ? XColors.Submit_Button_Color
                        : Colors.grey,
                    textColor: Colors.white,
                    text: 'تسجيل الدخول',
                    onPressed: () {
                      // EasyLoadingInit.startLoading();
                      // Future.delayed(Duration(seconds: 2), () {
                      //   EasyLoading.dismiss();
                      //   Navigator.of(navigatorKey.currentContext!).push(
                      //     MaterialPageRoute(builder: (context) => MainScreen()),
                      //   );
                      // });
                      context.read<UserBloc>().add(const SignInEvent());
                    },
                  );
                }),
            SizedBox(height: 40.h),
            SizedBox(
              width: 329.w,
              height: 130.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinButton(
                    isButtonEnabled: true,
                    fillColor: XColors.Submit_Button_Color,
                    textColor: XColors.Background_Color1,
                    image: 'facebook.png',
                    text: 'تسجيل الدخول عبر فيسبوك',
                    onPressed: () {},
                  ),
                  OutlinButton(
                    isButtonEnabled: true,
                    fillColor: XColors.Submit_Button_Color,
                    textColor: XColors.Background_Color1,
                    image: 'google.png',
                    text: 'تسجيل الدخول عبر جوجل',
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            SizedBox(height: 26.h),
            UnderlinButton(
              buttonText: 'ليس لديك حساب؟! سجل الان!',
              onPressed: () {
                Navigator.of(navigatorKey.currentContext!).push(
                  MaterialPageRoute(builder: (context) => SignUpScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
