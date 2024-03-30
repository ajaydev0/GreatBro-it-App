
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPageController extends GetxController {
  //
  RxBool isVisible = false.obs;
  RxBool isPasswordEightCharacters = false.obs;
  RxBool hasPasswordOneNumber = false.obs;
  //
  late final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late Rx<TextEditingController> email = TextEditingController().obs;
  late Rx<TextEditingController> pass = TextEditingController().obs;

  // Validate Email TextFormFeild
  validateEmail(value) {
    if (value == null || value.trim().isEmpty) {
      return " Required";
    }
    if (!value.trim().contains("@") || !value.trim().contains(".com")) {
      return "Email is not valid";
    }
    // if (!value.trim().contains("@gmail.com")) {
    //   return "Enter valid email";
    // }
    return null;
  }

  // Validate Password TextFormFeild
  validatePass(value) {
    if (value == null || value.isEmpty) {
      return " Requied";
    }
    if (isPasswordEightCharacters.value != true) {
      return "Requied 8 characters";
    }
    if (hasPasswordOneNumber.value != true) {
      return "Requied 1 number";
    }
    // if (!value.trim().contains("@")) {
    //   return "Enter Strong Password (@)";
    // }

    return null;
  }

  onPasswordChanged(String password) {
    final numericRegex = RegExp(r'[0-9]');

    isPasswordEightCharacters.value = false;
    if (password.length >= 8) isPasswordEightCharacters.value = true;

    hasPasswordOneNumber = false.obs;
    if (numericRegex.hasMatch(password)) hasPasswordOneNumber.value = true;
  }

  onClickLogIn(controller) {
    if (controller.formKey.currentState!.validate()) {
      print("Validation Complete");
    }
  }
}
