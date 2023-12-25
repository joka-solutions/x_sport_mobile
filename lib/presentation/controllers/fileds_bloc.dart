import 'dart:async';
import 'dart:ffi';
import 'package:location/location.dart';
import 'package:rxdart/rxdart.dart';
import 'fileds_validator.dart';

class Bloc extends Validators {
  final _name = BehaviorSubject<String>();
  final _email = BehaviorSubject<String>();
  final _password = BehaviorSubject<String>();
  final _newPassword = BehaviorSubject<String>();
  final _confpassword = BehaviorSubject<String>();
  final _forgotConfpassword = BehaviorSubject<String>();
  final _privacy = BehaviorSubject<bool>();
  final _phone = BehaviorSubject<String>();
  final _code = BehaviorSubject<String>();
  final _latitude = BehaviorSubject<double>();
  final _longitude = BehaviorSubject<double>();
  final _emailPhone = BehaviorSubject<String>();

  Stream<String> get name => _name.stream.transform(namevalidator);

  Stream<String> get email => _email.stream.transform(emailvalidator);
  Stream<String> get emailPhone =>
      _emailPhone.stream.transform(emailPhoneValidator);
  Stream<String> get password => _password.stream.transform(passvalidator);
  Stream<String> get newPassword =>
      _newPassword.stream.transform(passvalidator);
  Stream<String> get confPassword =>
      _confpassword.stream.transform(confValidator);
  Stream<bool> get privacy => _privacy.stream.transform(privacyValidator);

  Stream<String> get code => _code.stream.transform(codevalidator);

  Stream<String> get phone => _phone.stream.transform(phonevalidator);

  Stream<double> get latitude => _latitude.stream.transform(cordValidator);
  Stream<double> get longitude => _longitude.stream.transform(cordValidator);

  Stream<bool> get loginValid =>
      Rx.combineLatest2(emailPhone, password, (e, p) => true);

  Stream<bool> get registerIsValid => Rx.combineLatest8(
      name,
      email,
      password,
      confPassword,
      phone,
      latitude,
      longitude,
      privacy,
      (n, e, p, cp, ph, lat, long, pr) => true);

  Function(String) get changeName => _name.sink.add;

  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;
  Function(String) get changeNewPassword => _newPassword.sink.add;
  Function(String) get changeConfPassword => _confpassword.sink.add;
  Function(String) get forgotchangeConf => _forgotConfpassword.sink.add;
  Function(bool) get changePrivacy => _privacy.sink.add;
  Function(String) get changePhone => _phone.sink.add;
  Function(String) get changecode => _code.sink.add;
  Function(String) get changeEmailPhone => _emailPhone.sink.add;

  get nameValue => _name.valueOrNull;
  get emailValue => _email.valueOrNull;
  get passwordValue => _password.valueOrNull;
  get newPasswordValue => _newPassword.valueOrNull;
  get confValue => _confpassword.valueOrNull;
  get forgotConfValue => _forgotConfpassword.valueOrNull;
  get privacyValue => _privacy.valueOrNull;
  get phoneValue => _phone.valueOrNull;
  get codeValue => _code.valueOrNull;
  get latValue => _latitude.valueOrNull;
  get longeValue => _longitude.valueOrNull;
  get emailPhoneValue => _emailPhone.valueOrNull;

  static void disp(Bloc bloc) {
    bloc._name.value = "";
    bloc._email.value = "";
    bloc._password.value = "";
    bloc._newPassword.value = "";
    bloc._confpassword.value = "";
    bloc._forgotConfpassword.value = "";
    bloc._privacy.value = false;
    bloc._code.value = "";
    bloc._phone.value = "";
    bloc._emailPhone.value = "";
  }

  Future<void> updateLocation() async {
    Location location = Location();
    bool serviceEnabled;
    PermissionStatus permissionGranted;
    LocationData locationData;
    location.requestPermission();

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return;
      }
    }
    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    locationData = await location.getLocation();
    _latitude.add(locationData.latitude!);
    _longitude.add(locationData.longitude!);
  }
}

final registerStream = Bloc();
final signInStream = Bloc();
final editProfileStream = Bloc();
final rankSearchStream = Bloc();
final academiesSearchStream = Bloc();
