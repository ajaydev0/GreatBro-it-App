class CourseModel {
  String url;
  String lesson;
  String title;
  String price;
  String? student;
  String? rating;
  String? favorite;

  CourseModel({
    required this.url,
    required this.lesson,
    required this.title,
    required this.price,
     this.student,
     this.rating,
     this.favorite,
  });
}
