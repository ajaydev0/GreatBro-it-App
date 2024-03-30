import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPageController extends GetxController {
  RxBool  activeColorEmail = false.obs;
  RxBool  activeColorPass = false.obs;
  RxBool  activeObsecureText = false.obs;
 late Rx<TextEditingController> email = TextEditingController().obs;
 late Rx<TextEditingController> pass = TextEditingController().obs;

}
