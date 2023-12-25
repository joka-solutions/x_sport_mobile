import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_sport/presentation/widgets/rectangle_container.dart';

class AcademyAboutComponent extends StatelessWidget {
  const AcademyAboutComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          margin: EdgeInsets.only(top: 10.w),
          height: 0.07.sh,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '9:00 AM to 1:00 PM',
                      style: GoogleFonts.tajawal(
                          height: 2.w,
                          color: Color(0xFFA2A2A2),
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      '+96354875520557',
                      style: GoogleFonts.tajawal(
                          color: Color(0xFFA2A2A2),
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(width: 10.w),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                        padding: EdgeInsets.all(2.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.sp),
                            border: Border.all(
                                color: Color(0xFFA2A2A2), width: 0.2.w)),
                        child: Icon(
                          Icons.access_time_sharp,
                          size: 16.sp,
                          color: Color(0xFFA2A2A2),
                        )),
                    Container(
                        padding: EdgeInsets.all(2.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.sp),
                            border: Border.all(
                                color: Color(0xFFA2A2A2), width: 0.2.w)),
                        child: Icon(
                          Icons.call,
                          size: 16.sp,
                          color: Color(0xFF797878),
                        ))
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'اسم الاكاديمية',
                  style: GoogleFonts.tajawal(
                      fontSize: 20.sp, fontWeight: FontWeight.w500),
                ),
                Text(
                  'الموقع الجغرافي',
                  style: GoogleFonts.tajawal(
                      color: Color(0xFF797878),
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ]),
        ),
        Container(
          margin: EdgeInsets.only(top: 18.h),
          alignment: Alignment.topRight,
          width: 0.74.sw,
          child: Text(
            'نص يمثل وصف عن الاكاديمية ومرافقها وخدماتها والانظمة التدريبية المتبعة وكل ما يمكن ان يهم العميل من معلومات بشكل مفصل من 5 اسطر الى 6',
            textAlign: TextAlign.end,
            style:
                GoogleFonts.tajawal(color: Color(0xFF6C6C6C), fontSize: 15.sp),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20.w),
          height: 0.085.sh,
          width: 0.9.sw,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 13.w),
                  height: 60.w,
                  width: 70.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.sp),
                      color: Color(0xFFECECFB),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 12,
                            offset: Offset(0, 4.w))
                      ]),
                );
              }),
        ),
        SizedBox(
          height: 20.w,
        ),
        RectangleContainer(
            bottomMargin: 10,
            radius: 13,
            child: Container(
              padding: EdgeInsets.only(right: 10.w),
              height: 0.08.sh,
              width: 1.sw,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'الاشتراك بدءا من 15\$ الى 45\$ شهريا',
                    style: GoogleFonts.tajawal(
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'يختلف الاشتراك حسب الفئات السنية ومزايا اخرى',
                    style: GoogleFonts.tajawal(
                        color: Color(0xFF6E6E6E),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
