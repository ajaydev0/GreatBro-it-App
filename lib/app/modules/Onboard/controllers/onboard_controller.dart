import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardController extends GetxController {
  RxInt selectedIndex = 0.obs;

  late PageController pageController;
  @override
  void onInit() {
    pageController = PageController(initialPage: selectedIndex.value);
    super.onInit();
  }
}
