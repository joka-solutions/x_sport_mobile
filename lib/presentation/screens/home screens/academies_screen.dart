import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/presentation/components/profile_screen_components/profile_main_components/profile_appbar_component.dart';
import 'package:x_sport/presentation/components/academies_screen_components/academies_categories_component.dart';
import '../../components/academies_screen_components/academies_component.dart';
import '../../components/academies_screen_components/membership_component.dart';
import '../../components/academies_screen_components/suggested_academies_component.dart';
import '../../controllers/fileds_bloc.dart';
import '../../widgets/text_fields/search_textfield.dart';

class AcademiesScreen extends StatelessWidget {
  AcademiesScreen({super.key});
  final TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ProfileAppBarComponent(
        isProfile: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 0.04.sw, vertical: 10.w),
              child: Column(
                children: [
                  SearchField(
                    hintText: '...ابحث عن لاعب',
                    controller: search,
                    keyboardType: TextInputType.emailAddress,
                    textStream: academiesSearchStream.name,
                    onChanged: academiesSearchStream.changeName,
                  ),
                  SizedBox(height: 10.w),
                  const MemberShipComponent(),
                ],
              ),
            ),
            AcademeiesCategoriesComponent(),
            SizedBox(height: 26.h),
            const SuggestedAcademiesComponent(),
            SizedBox(height: 12.h),
            const AcademiesComponent(),
          ],
        ),
      ),
    );
  }
}
