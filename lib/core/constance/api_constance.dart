class ApiConstance {
  // home 192.168.2.10
  // work 192.168.1.90

  static const baseUrl = 'http://192.168.2.3:8000/api';

  static const signInApi = '/login';
  static const signUpApi = '/register';
  static const validateAccountApi = '/Verification/emailVerification';
  static const getSportsApi = '/get_sport';
  static const sendImageAndSportsApi = '/user_details';
  static const getUserInfoApi = '/get_user_with_token';
}
