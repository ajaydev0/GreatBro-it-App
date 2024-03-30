import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupPageController extends GetxController {
  RxBool activeColorEmail = false.obs;
  RxBool activeColorPass = false.obs;
  RxBool activeObsecureText = false.obs;
  late Rx<TextEditingController> firstName = TextEditingController().obs;
  late Rx<TextEditingController> lastName = TextEditingController().obs;
  late Rx<TextEditingController> number = TextEditingController().obs;
  late Rx<TextEditingController> email = TextEditingController().obs;
  late Rx<TextEditingController> pass = TextEditingController().obs;
}
