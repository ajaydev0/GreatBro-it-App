part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const splashScreen = _Path.splashScreen;
  static const onBoard = _Path.onBoard;
  static const HomePage = _Path.HomePage;
  static const nav_Bar = _Path.nav_Bar;
  static const course_Details_Page = _Path.course_Details_Page;
  static const NOTIFICATIONS_PAGE = '/notifications-page';
  static const LOGIN_PAGE = '/login-page';
  static const SIGNUP_PAGE = '/signup-page';
  static const PROFILE_PAGE = '/profile-page';
  static const VIDEO_PAGE = '/video-page';
}

abstract class _Path {
  _Path._();
  static const splashScreen = "/";
  static const onBoard = "/onBoard";
  static const HomePage = "/HomePage";
  static const nav_Bar = '/Nav_bar';
  static const course_Details_Page = '/Course_Details_Page';
}
