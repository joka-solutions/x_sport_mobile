// ignore_for_file: camel_case_types, deprecated_member_use, curly_braces_in_flow_control_structures, unused_local_variable, unnecessary_null_comparison
import 'dart:async';

import 'package:x_sport/presentation/controllers/fileds_bloc.dart';

class Validators {
  final namevalidator =
      StreamTransformer<String, String>.fromHandlers(handleData: (name, sink) {
    if (name == null || name.isEmpty) {
      sink.addError(" ");
    } else {
      sink.add(name);
    }
  });
  final detailsvalidator = StreamTransformer<String, String>.fromHandlers(
      handleData: (details, sink) {
    if (details == null || details.isEmpty) {
      sink.addError("LocaleKeys.field_error_details.tr()");
    } else if (details.isEmpty) {
      sink.addError(" ");
    } else {
      sink.add(details);
    }
  });

  final emailvalidator =
      StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    String epattern =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&*'+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    RegExp eregex = RegExp(epattern);

    if (eregex.hasMatch(email))
      sink.add(email);
    else if (email == null || email.isEmpty)
      sink.addError(" ");
    else
      sink.addError("البريد الالكتروني غير صحيح");
  });

  final emailPhoneValidator =
      StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    String epattern =
        r'^(?:[0-9]{7,17}|[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,})$';
    RegExp eregex = RegExp(epattern);

    if (eregex.hasMatch(email))
      sink.add(email);
    else if (email == null || email.isEmpty)
      sink.addError(" ");
    else
      sink.addError("البريد الالكتروني غير صحيح");
  });
  var passvalidator =
      StreamTransformer<String, String>.fromHandlers(handleData: (pass, sink) {
    String pattern = r'^(?=.*[a-zA-Zء-ي0-9]).{4,}$';
    RegExp regex = RegExp(pattern, unicode: true);
    if (regex.hasMatch(pass))
      sink.add(pass);
    else if (pass == null || pass.isEmpty)
      sink.addError(" ");
    else
      sink.addError("يرجى ادخال كلمة مرور من ٤ احرف على الاقل");
  });
  var forgotpassvalidator =
      StreamTransformer<String, String>.fromHandlers(handleData: (pass, sink) {
    String pattern = r'^(?=.*[a-zA-Zء-ي0-9]).{4,}$';
    RegExp regex = RegExp(pattern);
    if (regex.hasMatch(pass))
      sink.add(pass);
    else if (pass == null || pass.isEmpty)
      sink.addError(" ");
    else
      sink.addError("LocaleKeys.field_error_password.tr()");
  });
  var confValidator =
      StreamTransformer<String, String>.fromHandlers(handleData: (conf, sink) {
    String pattern = r'^(?=.*[a-zA-Zء-ي0-9]).{4,}$';
    RegExp regex = RegExp(pattern);
    if (regex.hasMatch(conf) &&
        registerStream.passwordValue == registerStream.confValue)
      sink.add(conf);
    else if (conf == null || conf.isEmpty)
      sink.addError(" ");
    else
      sink.addError("كلمة المرور غير مطابقة");
  });
  // var forgotConfvalidator =
  //     StreamTransformer<String, String>.fromHandlers(handleData: (conf, sink) {
  //   String pattern = r'^(?=.*[a-zA-Zء-ي]).{4,}$';
  //   RegExp regex = RegExp(pattern);
  //   if (regex.hasMatch(conf) && blocF.newPasswordc == blocF.forgotConfc)
  //     sink.add(conf);
  //   else if (conf == null || conf.isEmpty)
  //     sink.addError("LocaleKeys.field_error_confirm_password.tr()");
  //   else
  //     sink.addError("LocaleKeys.field_error_confirm_password.tr()");
  // });

  var phonevalidator = StreamTransformer<String, String>.fromHandlers(
    handleData: (phone, sink) {
      String pattern = r'(?:\d\s?){9,17}\d$';

      RegExp regex = RegExp(pattern);
      if (regex.hasMatch(phone)) {
        sink.add(phone);
      } else if (phone.isEmpty || phone == null) {
        sink.addError(" ");
      } else {
        sink.addError("ادخل رقم هاتف صحيح");
      }
    },
  );
  final codevalidator =
      StreamTransformer<String, String>.fromHandlers(handleData: (code, sink) {
    if (code == null || code.isEmpty) {
      sink.addError(" ");
    } else if (code.isEmpty) {
      sink.addError("ادخل رمز التاكيد");
    } else {
      sink.add(code);
    }
  });
  final privacyValidator =
      StreamTransformer<bool, bool>.fromHandlers(handleData: (privacy, sink) {
    if (privacy == false) {
      sink.addError(" ");
    } else {
      sink.add(privacy);
    }
  });

  final cordValidator =
      StreamTransformer<double, double>.fromHandlers(handleData: (cord, sink) {
    if (cord.toString().isEmpty || cord == null || cord == 0.0) {
      sink.addError(" ");
    } else {
      sink.add(cord);
    }
  });
}
