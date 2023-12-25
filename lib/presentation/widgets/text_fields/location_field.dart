import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constance/app_constance.dart';

class LocationField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType keyboardType;
  final Function onChanged;

  final Stream textStream;
  final bool isObscureText;

  const LocationField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.keyboardType,
    required this.textStream,
    required this.onChanged,
    this.isObscureText = false,
  });

  @override
  State<LocationField> createState() => _LocationFieldState();
}

class _LocationFieldState extends State<LocationField> {
  late bool isHidden;
  @override
  void initState() {
    isHidden = widget.isObscureText;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: widget.textStream,
        builder: (context, snapshot) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8.0.sp)),
              color: Color(0xFFE0E4EE),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF000000).withOpacity(0.1),
                  blurRadius: 6.sp,
                  offset: Offset(0, 5.w),
                ),
              ],
            ),
            width: 0.76.sw,
            height: 40.h,
            child: TextFormField(
              textDirection: TextDirection.rtl,
              keyboardType: widget.keyboardType,
              style: GoogleFonts.tajawal(
                textStyle: TextStyle(
                    color: XColors.Background_Color1,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400),
              ),
              controller: widget.controller,
              obscureText: isHidden,
              textAlign: TextAlign.right,
              textInputAction: TextInputAction.next,
              onChanged: (value) => widget.onChanged(value),
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.location_on_outlined,
                  size: 30.sp,
                  color: Color(0xFF828282),
                ),
                hintText: widget.hintText,
                hintStyle: GoogleFonts.tajawal(
                  height: 1.w,
                  color: Color(0xFF828282),
                  fontSize: 15.sp,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFDDDDDD), width: 1.w),
                  borderRadius: BorderRadius.all(Radius.circular(8.0.sp)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFDDDDDD), width: 1.w),
                  borderRadius: BorderRadius.all(Radius.circular(8.0.sp)),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0.sp)),
                  borderSide: BorderSide(color: Color(0xFFDDDDDD), width: 1.w),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0.sp)),
                  borderSide: BorderSide(color: Color(0xFFDDDDDD), width: 1.w),
                ),
              ),
            ),
          );
        });
  }
}
