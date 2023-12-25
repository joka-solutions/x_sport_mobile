import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RankingDetailsComponent extends StatelessWidget {
  final Widget child;
  final Color boxColor;
  final Color textColor;
  final Color iconColor;
  const RankingDetailsComponent({
    super.key,
    required this.child,
    this.boxColor = Colors.white,
    this.textColor = const Color.fromARGB(255, 152, 152, 152),
    this.iconColor = const Color.fromARGB(255, 152, 152, 152),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.h),
      height: 70.h,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFDDDDDD), width: 1.w),
        borderRadius: BorderRadius.circular(9.sp),
        color: boxColor,
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF000000).withOpacity(0.1),
            blurRadius: 6.sp,
            offset: Offset(0, 5.w),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {},
              color: iconColor,
              iconSize: 28.sp,
              icon: Icon(Icons.more_vert)),
          Text(
            'اسم اللاعب',
            style: TextStyle(
              color: textColor,
              fontSize: 18.sp,
              fontFamily: 'Tajawal',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
          Container(
            height: 50.h,
            width: 50.w,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/avatar1.png'))),
          ),
          child,
        ],
      ),
    );
  }
}
