import 'package:get/get.dart';
import '../modules/CourseDetailsPage/bindings/course_details_page_binding.dart';
import '../modules/CourseDetailsPage/views/course_details_page_view.dart';
import '../modules/HomePage/bindings/home_page_binding.dart';
import '../modules/HomePage/views/home_page_view.dart';
import '../modules/LoginPage/bindings/login_page_binding.dart';
import '../modules/LoginPage/views/login_page_view.dart';
import '../modules/NavBar/bindings/nav_bar_binding.dart';
import '../modules/NavBar/views/nav_bar_view.dart';
import '../modules/NotificationsPage/bindings/notifications_page_binding.dart';
import '../modules/NotificationsPage/views/notifications_page_view.dart';
import '../modules/Onboard/bindings/onboard_binding.dart';
import '../modules/Onboard/views/onboard_view.dart';
import '../modules/ProfilePage/bindings/profile_page_binding.dart';
import '../modules/ProfilePage/views/profile_page_view.dart';
import '../modules/SignupPage/bindings/signup_page_binding.dart';
import '../modules/SignupPage/views/signup_page_view.dart';
import '../modules/VideoPage/bindings/video_page_binding.dart';
import '../modules/VideoPage/views/video_page_view.dart';
import '../modules/splash_screen/binding/splash_binding.dart';
import '../modules/splash_screen/view/splash_view.dart';
part 'app_routes.dart';

class AppPages {
  static const initialPage = Routes.login_Page;
  static final pages = [
    GetPage(
      name: _Path.splashScreen,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Path.onBoard,
      page: () => const OnboardView(),
      binding: OnboardBinding(),
    ),
    GetPage(
      name: Routes.homePage,
      page: () => const HomePageView(),
      binding: HomePageBinding(),
    ),
    GetPage(
      name: Routes.nav_Bar,
      page: () => const NavBarView(),
      binding: NavBarBinding(),
    ),
    GetPage(
      name: Routes.course_Details_Page,
      page: () => const CourseDetailsPageView(),
      binding: CourseDetailsPageBinding(),
    ),
    GetPage(
      name: Routes.notification_Page,
      page: () => const NotificationsPageView(),
      binding: NotificationsPageBinding(),
    ),
    GetPage(
      name: Routes.login_Page,
      page: () => const LoginPageView(),
      binding: LoginPageBinding(),
    ),
    GetPage(
      name: Routes.signUp_Page,
      page: () => const SignupPageView(),
      binding: SignupPageBinding(),
    ),
    GetPage(
      name: Routes.profile_page,
      page: () => const ProfilePageView(),
      binding: ProfilePageBinding(),
    ),
    GetPage(
      name: Routes.video_page,
      page: () => const VideoPageView(),
      binding: VideoPageBinding(),
    ),
  ];
}
