part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const ONBOARDING = _Paths.ONBOARDING;
  static const HOME = _Paths.HOME;
  static const LOGIN = _Paths.LOGIN;
  static const REGISTER = _Paths.REGISTER;
  static const OTP = _Paths.OTP;
  static const PRACTISE = _Paths.PRACTISE;
  static const PROFILE = _Paths.PROFILE;
  static const ASSIGNMENT = _Paths.ASSIGNMENT;
  static const VIDHYA_HUB = _Paths.VIDHYA_HUB;
  static const BOTTOMVIEW = _Paths.BOTTOMVIEW;
}

abstract class _Paths {
  _Paths._();
  static const ONBOARDING = '/onboarding';
  static const HOME = '/home';
  static const LOGIN = '/login';
  static const REGISTER = '/register';
  static const OTP = '/otp';
  static const PRACTISE = '/practise';
  static const PROFILE = '/profile';
  static const ASSIGNMENT = '/assignment';
  static const VIDHYA_HUB = '/vidhya-hub';
  static const BOTTOMVIEW = '/bottomview';
}
