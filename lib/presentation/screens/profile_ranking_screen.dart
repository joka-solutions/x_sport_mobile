import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/presentation/widgets/text_fields/search_textfield.dart';

import '../components/ranking_screen_components/ranking_details.dart';
import '../controllers/fileds_bloc.dart';

class ProfileRankingScreen extends StatefulWidget {
  const ProfileRankingScreen({super.key});

  @override
  State<ProfileRankingScreen> createState() => _ProfileRankingScreenState();
}

class _ProfileRankingScreenState extends State<ProfileRankingScreen> {
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 0.0.sh,
        flexibleSpace: Container(
          padding: EdgeInsets.only(left: 18.w, right: 18.w, top: 20.h),
          height: 0.13.sh,
          decoration: BoxDecoration(
            color: XColors.Background_Color1,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.sp),
                bottomRight: Radius.circular(20.sp)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer();
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
                  child: Icon(Icons.menu),
                ),
              ),
              Text(
                'قائمة الترتيب',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23.sp,
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer();
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
                  child: Icon(Icons.arrow_forward_ios_outlined),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 0.04.sw, right: 0.04.sw, top: 12.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SearchField(
                hintText: '...ابحث عن لاعب',
                controller: search,
                keyboardType: TextInputType.emailAddress,
                textStream: rankSearchStream.name,
                onChanged: rankSearchStream.changeName,
              ),
              Container(
                margin: EdgeInsets.only(top: 12.h),
                height: 0.18.sh,
                // width: 0.91.sw,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.sp),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/ranking.png'))),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.w, top: 15.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'تفاصيل',
                      style: TextStyle(
                        color: Color(0xFF989898),
                        fontSize: 16.sp,
                        fontFamily: 'Tajawal',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    SizedBox(
                      child: Row(
                        children: [
                          Text(
                            'اللاعب',
                            style: TextStyle(
                              color: Color(0xFF989898),
                              fontSize: 16.sp,
                              fontFamily: 'Tajawal',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(right: 0.06.sw, left: 0.165.sw),
                            child: Text(
                              '#',
                              style: TextStyle(
                                color: Color(0xFF989898),
                                fontSize: 16.sp,
                                fontFamily: 'Tajawal',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  RankingDetailsComponent(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      height: 33.h,
                      width: 0.1.sw,
                      child: Image.asset('assets/images/rank1.png'),
                    ),
                  ),
                  RankingDetailsComponent(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      height: 33.h,
                      width: 0.1.sw,
                      child: Image.asset('assets/images/rank2.png'),
                    ),
                  ),
                  RankingDetailsComponent(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      height: 33.h,
                      width: 0.1.sw,
                      child: Image.asset(
                        'assets/images/rank3.png',
                      ),
                    ),
                  ),
                  RankingDetailsComponent(
                    child: SizedBox(
                      width: 0.09.sw,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('4'),
                          Container(
                            height: 14.h,
                            width: 16.w,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/green_up_arrow.png'))),
                          ),
                        ],
                      ),
                    ),
                  ),
                  RankingDetailsComponent(
                    child: SizedBox(
                      width: 0.09.sw,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('5'),
                          Container(
                            height: 14.h,
                            width: 16.w,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/red_down_arrow.png'))),
                          ),
                        ],
                      ),
                    ),
                  ),
                  RankingDetailsComponent(
                    child: SizedBox(
                      width: 0.09.sw,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('6'),
                          Container(
                            height: 14.h,
                            width: 16.w,
                          ),
                        ],
                      ),
                    ),
                  ),
                  RankingDetailsComponent(
                    child: SizedBox(
                      width: 0.09.sw,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('7'),
                          Container(
                            height: 14.h,
                            width: 16.w,
                          ),
                        ],
                      ),
                    ),
                  ),
                  RankingDetailsComponent(
                    iconColor: Colors.white,
                    textColor: Colors.white,
                    boxColor: XColors.Submit_Button_Color,
                    child: SizedBox(
                      width: 0.09.sw,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '35',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            height: 14.h,
                            width: 16.w,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
