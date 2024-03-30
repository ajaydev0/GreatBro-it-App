import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/router/app_pages.dart';

//global object for accessing device screen size
late Size size;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    //initializing media query (for getting device screen size)
    size = MediaQuery.of(context).size;
    return GetMaterialApp(
      title: "GreatBro",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.initialPage,
      getPages: AppPages.pages,
    );
  }
}
