import 'package:get/get.dart';

import '../controllers/course_details_page_controller.dart';

class CourseDetailsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CourseDetailsPageController>(
      () => CourseDetailsPageController(),
    );
  }
}
