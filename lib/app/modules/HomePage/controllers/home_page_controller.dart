import 'package:get/get.dart';
import 'package:greatbro_it/app/modules/HomePage/models/course_model.dart';

class HomePageController extends GetxController {
  RxInt currentCourse = 0.obs;
  List<CourseModel> courseList = [
    CourseModel(url: "assets/course/1.jpg", lesson: "10", title: "UI/UX Online Course", price: "30",student: "120",rating: "4.5",favorite: "5"),
    CourseModel(url: "assets/course/2.jpg", lesson: "8", title: "Web Development", price: "20",student: "200",rating: "4.3",favorite: "4"),
    CourseModel(url: "assets/course/3.jpg", lesson: "4", title: "Graphics Design", price: "20",student: "250",rating: "4.2",favorite: "6"),
    CourseModel(url: "assets/course/4.jpg", lesson: "9", title: "App Development", price: "50",student: "150",rating: "5.0",favorite: "8"),

  ];
 
}
