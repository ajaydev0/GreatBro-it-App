part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const splashScreen = _Path.splashScreen;
  static const onBoard = _Path.onBoard;
  static const homePage = _Path.homePage;
  static const nav_Bar = _Path.nav_Bar;
  static const course_Details_Page = _Path.course_Details_Page;
  static const notification_Page = _Path.notification_Page;
  static const login_Page = _Path.login_Page;
  static const signUp_Page = _Path.signUp_Page;
  static const profile_page = _Path.profile_page;
  static const video_page = _Path.video_page;
}

abstract class _Path {
  _Path._();
  static const splashScreen = "/";
  static const onBoard = "/onBoard";
  static const homePage = "/HomePage";
  static const nav_Bar = '/Nav_bar';
  static const course_Details_Page = '/Course_Details_Page';
  static const notification_Page = '/notifications-page';
  static const login_Page = '/login-page';
  static const signUp_Page = '/signup-page';
  static const profile_page = '/profile-page';
  static const video_page = '/video-page';
}
