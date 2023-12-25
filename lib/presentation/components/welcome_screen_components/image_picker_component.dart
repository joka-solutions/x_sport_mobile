import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class ImagePcikerComponent extends StatelessWidget {
  ImagePcikerComponent({super.key, required this.getImage});

  final void Function(List<int>, String) getImage;
  final ValueNotifier<XFile?> _pickedImageNotifier =
      ValueNotifier<XFile?>(null);
  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();

    final XFile? pickedFile =
        await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      List<String> imageParts = pickedFile.name.split('.');

      if (imageParts.length > 1) {
        _pickedImageNotifier.value = XFile(pickedFile.path);
        List<int> imageBytes = await pickedFile.readAsBytes();
        final String imageType = imageParts.last.toLowerCase();
        getImage(imageBytes, imageType);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _pickImage,
      child: DottedBorder(
        borderType: BorderType.Circle,
        color: Colors.white,
        strokeWidth: 1,
        padding: EdgeInsets.all(20),
        dashPattern: [10],
        child: ValueListenableBuilder<XFile?>(
          valueListenable: _pickedImageNotifier,
          builder: (context, pickedImage, child) {
            return Container(
              alignment: Alignment.center,
              height: 150.w,
              child: pickedImage == null
                  ? Text(
                      'اختر صورة شخصية',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.tajawal(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  : ClipOval(
                      child: Image.file(
                        File(pickedImage.path),
                        width: 150.w,
                        height: 150.w,
                        fit: BoxFit.cover,
                      ),
                    ),
            );
          },
        ),
      ),
    );
  }
}
