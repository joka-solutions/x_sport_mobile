import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:x_sport/core/constance/app_functions.dart';
import 'package:x_sport/core/utils/enums.dart';
import 'package:x_sport/data/dtos/sport_dto/sport_dto.dart';
import 'package:x_sport/main.dart';
import 'package:x_sport/presentation/controllers/user_bloc/user_bloc.dart';
import 'package:x_sport/presentation/controllers/user_bloc/user_event.dart';
import 'package:x_sport/presentation/controllers/user_bloc/user_state.dart';
import 'package:x_sport/presentation/screens/home%20screens/main_screen.dart';
import '../../core/constance/app_constance.dart';
import '../components/welcome_screen_components/image_picker_component.dart';
import '../widgets/buttons/submit_button.dart';

class WelcomeScreen extends StatelessWidget {
  String imageType = '';
  List<int> imageBytes = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            XColors.Background_Color1,
            XColors.Background_Color2
          ], begin: Alignment.centerLeft, end: Alignment.centerRight)),
          child: Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.language_sharp,
                    color: Color(0xFFFFFFFF),
                  ),
                  onPressed: () {},
                  iconSize: 38.w,
                ),
              ],
            ),
          ),
        ),
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: Container(
        alignment: Alignment.topCenter,
        height: 1.sh,
        width: 1.sw,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [XColors.Background_Color1, XColors.Background_Color2],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight),
        ),
        child: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            if (state.sportsState == RequestState.loaded) {
              final List<SportDto> sports = state.sports;
              final ValueNotifier<List<bool>> isSelectedList =
                  ValueNotifier<List<bool>>(
                      List.generate(sports.length, (index) => false));
              final List<int> selectedSports = [];
              return Stack(
                fit: StackFit.expand,
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                      top: 10.h,
                      child: Image.asset(
                        'assets/images/x_logo_welcome.png',
                        colorBlendMode: BlendMode.plus,
                      )),
                  Positioned(
                      top: 200.h,
                      width: 1.sw,
                      child: Column(
                        children: [
                          Text(
                            'اهلا بك!',
                            style: GoogleFonts.tajawal(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            'قم باكمال معلوماتك الشخصية كي تحقق افضل تجربة في اكس سبورت',
                            style: GoogleFonts.tajawal(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          SizedBox(height: 30.h),
                          ImagePcikerComponent(
                            getImage: (bytes, type) {
                              imageBytes = bytes;
                              imageType = type;
                            },
                          ),
                          SizedBox(height: 30.h),
                          Text(
                            'اي رياضة تفضل ان تبدأبها؟!',
                            style: GoogleFonts.tajawal(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            'يمكنك اضافة  المزيد من النشاطات لاحقا!',
                            style: GoogleFonts.tajawal(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          SizedBox(height: 30.h),
                          SizedBox(
                              height: 120.h,
                              width: 360.w,
                              child: GridView.builder(
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisExtent: 36.w,
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 14.0.w,
                                  mainAxisSpacing: 20.0.w,
                                ),
                                itemCount: sports.length,
                                itemBuilder: (context, index) {
                                  return ValueListenableBuilder(
                                    valueListenable: isSelectedList,
                                    builder: (context, selectedList, child) {
                                      final isSelected = selectedList[index];

                                      return GestureDetector(
                                        onTap: () {
                                          final sportId = sports[index].id;

                                          if (selectedSports
                                              .contains(sportId)) {
                                            // If sportId is already in the list, remove it
                                            selectedSports.remove(sportId);
                                          } else {
                                            // If sportId is not in the list, add it
                                            selectedSports.add(sportId);
                                          }

                                          print(selectedSports);

                                          final List<bool> newList =
                                              List.from(selectedList);
                                          newList[index] = !isSelected;
                                          isSelectedList.value = newList;
                                        },
                                        child: Container(
                                          width: 60.0.w,
                                          decoration: BoxDecoration(
                                            color: isSelected
                                                ? Colors.white
                                                : Colors.transparent,
                                            borderRadius:
                                                BorderRadius.circular(18.sp),
                                            border: Border.all(
                                              color: Colors.white,
                                              width: 1.0,
                                            ),
                                          ),
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 12.w),
                                            alignment: Alignment.center,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Expanded(
                                                  child: Icon(
                                                    Icons
                                                        .sports_tennis_outlined,
                                                    color: isSelected
                                                        ? XColors
                                                            .Background_Color1
                                                        : Colors.white,
                                                    size: 22.sp,
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 8,
                                                  child: Text(
                                                    textAlign: TextAlign.end,
                                                    sports[index].name,
                                                    style: GoogleFonts.tajawal(
                                                      textStyle: TextStyle(
                                                          color: isSelected
                                                              ? XColors
                                                                  .Background_Color1
                                                              : Colors.white,
                                                          fontSize: 15.sp,
                                                          fontWeight:
                                                              FontWeight.w300),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              )),
                          SizedBox(height: 20.h),
                          SubmitButton(
                            radius: 28,
                            isButtonEnabled: true,
                            fillColor: XColors.Submit_Button_Color,
                            textColor: Colors.white,
                            text: 'ابدأ الان',
                            onPressed: () {
                              print("image ${imageBytes}");
                              print("image ${imageType}");

                              context.read<UserBloc>().add(
                                  SendImageAndSportsEvent(
                                      imageBytes: imageBytes,
                                      imageType: imageType,
                                      selectedSports: selectedSports));

                              // EasyLoadingInit.startLoading();
                              // Future.delayed(Duration(seconds: 2), () {
                              //   EasyLoading.dismiss();
                              //   Navigator.of(navigatorKey.currentContext!).push(
                              //     MaterialPageRoute(
                              //         builder: (context) => MainScreen()),
                              //   );
                              // });
                            },
                          ),
                        ],
                      ))
                ],
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
