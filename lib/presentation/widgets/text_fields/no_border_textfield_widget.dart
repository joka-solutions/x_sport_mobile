import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constance/app_constance.dart';

class NoBorderTextFieldWidget extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final TextInputType keyboardType;
  final Function onChanged;

  final Stream textStream;

  const NoBorderTextFieldWidget({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.controller,
    required this.keyboardType,
    required this.textStream,
    required this.onChanged,
  });

  @override
  State<NoBorderTextFieldWidget> createState() =>
      _NoBorderTextFieldWidgetState();
}

class _NoBorderTextFieldWidgetState extends State<NoBorderTextFieldWidget> {
  late bool isHidden;
  // @override
  // void initState() {
  //   isHidden = widget.isObscureText;
  //   widget.controller.text = widget.hintText;

  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 34.0.h),
      child: SizedBox(
        width: 0.96.sw,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              widget.labelText,
              style: GoogleFonts.tajawal(
                textStyle: TextStyle(
                    color: Color(0xFF979797),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400),
              ),
            ),
            StreamBuilder(
                stream: widget.textStream,
                builder: (context, snapshot) {
                  return SizedBox(
                    height: 50.h,
                    child: TextFormField(
                      keyboardType: widget.keyboardType,
                      style: GoogleFonts.tajawal(
                        textStyle: TextStyle(
                            color: XColors.Background_Color1,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400),
                      ),
                      controller: widget.controller,
                      textAlign: TextAlign.end,
                      textInputAction: TextInputAction.next,
                      onChanged: (value) => widget.onChanged(value),
                      decoration: InputDecoration(
                        hintStyle: GoogleFonts.tajawal(
                          textStyle: TextStyle(
                              color: XColors.Background_Color1,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400),
                        ),
                        hintText: widget.hintText,
                        suffixIconColor: Colors.black,
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 1.2.w),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 1.2.w),
                        ),
                        errorBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 1.2.w),
                        ),
                        focusedErrorBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 1.2.w),
                        ),
                      ),
                    ),
                  );
                }),
            // StreamBuilder(
            //     stream: widget.textStream,
            //     builder: (context, snapshot) {
            //       final hasError = snapshot.hasError;
            //       return hasError
            //           ? Text(
            //               textAlign: TextAlign.center,
            //               snapshot.error.toString(),
            //               style: const TextStyle(
            //                   color: Color.fromARGB(201, 244, 67, 54)),
            //             )
            //           : const SizedBox.shrink();
            //     })
          ],
        ),
      ),
    );
  }
}
