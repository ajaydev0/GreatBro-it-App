class OnBoardDataModel {
  String? imageUrl;
  String? title;
  String? description;

  OnBoardDataModel({this.imageUrl, this.title, this.description});
}

List onBoardList = [
  OnBoardDataModel(
      imageUrl: "assets/onboard/1.jpg",
      title: "Learn UI/UX Design",
      description:
          "Welcome to our School Management App. Our App is very Userfriendly.Hope u like it."),
  OnBoardDataModel(
      imageUrl: "assets/onboard/2.jpg",
      title: "Learn Web Development",
      description:
          "Welcome to our School Management App. Our App is very Userfriendly.Hope u like it."),
  
  OnBoardDataModel(
      imageUrl: "assets/onboard/3.jpg",
        title: "Learn Grahics Design",
      description:
          "Welcome to our School Management App. Our App is very Userfriendly.Hope u like it."),
    OnBoardDataModel(
      imageUrl: "assets/onboard/4.jpg",
       title: "Learn App Development",
      description:
          "Welcome to our School Management App. Our App is very Userfriendly.Hope u like it."),
];
