import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_sport/presentation/widgets/rectangle_container.dart';

import '../components/match_reservation_components/reservation_dates_component.dart';
import '../components/match_reservation_components/reservation_sports_component.dart';
import '../components/match_reservation_components/reservation_stadiums_component.dart';
import '../components/match_reservation_components/reservation_times_component.dart';
import '../controllers/fileds_bloc.dart';
import '../widgets/text_fields/location_field.dart';

class MatchReservationScreen extends StatefulWidget {
  const MatchReservationScreen({super.key});

  @override
  State<MatchReservationScreen> createState() => _MatchReservationScreenState();
}

class _MatchReservationScreenState extends State<MatchReservationScreen> {
  TextEditingController location = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          // toolbarHeight: 0.04.sh,
          centerTitle: true,
          title: Text(
            'ابحث عن خصم جديد',
            style: GoogleFonts.tajawal(
                fontSize: 20.sp, fontWeight: FontWeight.w500),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_forward_ios))
          ]),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                width: 0.94.sw,
                child: Column(
                  children: [
                    RectangleContainer(
                      bottomMargin: 10,
                      radius: 14,
                      child: Padding(
                        padding: EdgeInsets.only(
                            right: 12.sp, left: 12.w, top: 8.w, bottom: 28.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              ':حدد الرياضة التي ستلعب',
                              style: GoogleFonts.tajawal(
                                  fontSize: 18.sp, fontWeight: FontWeight.w500),
                            ),
                            ReservationSportsComponent()
                          ],
                        ),
                      ),
                    ),
                    RectangleContainer(
                      bottomMargin: 10,
                      radius: 14,
                      child: Padding(
                        padding: EdgeInsets.only(
                            right: 12.sp, left: 12.w, top: 8.w, bottom: 28.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'اين تريد ان تلعب؟',
                              style: GoogleFonts.tajawal(
                                  fontSize: 18.sp, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 4.w),
                            Align(
                              alignment: Alignment.center,
                              child: LocationField(
                                hintText: 'ملاعب قريبة',
                                controller: location,
                                keyboardType: TextInputType.emailAddress,
                                textStream: rankSearchStream.name,
                                onChanged: rankSearchStream.changeName,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ReservationStadiumsComponent(),
              SizedBox(height: 10.w),
              SizedBox(
                width: 0.94.sw,
                child: Column(
                  children: [
                    RectangleContainer(
                      bottomMargin: 10,
                      radius: 14,
                      child: Padding(
                        padding: EdgeInsets.only(
                            right: 12.sp, left: 12.w, top: 8.w, bottom: 28.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              ':حدد تاريخ وزمن المباراة',
                              style: GoogleFonts.tajawal(
                                  fontSize: 18.sp, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'يمكنك تنظيم مباراة خلال مدة اقصاها 7 ايام',
                              style: GoogleFonts.tajawal(
                                  color: Color(0xFF909090),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                            ReservationDatesComponent()
                          ],
                        ),
                      ),
                    ),
                    ReservationTimesComponent(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
