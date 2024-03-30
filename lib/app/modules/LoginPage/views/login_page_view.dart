import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:greatbro_it/app/router/app_pages.dart';
import 'package:greatbro_it/main.dart';
import '../../../const/colors.dart';
import '../controllers/login_page_controller.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPageView extends GetView<LoginPageController> {
  const LoginPageView({super.key});
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(LoginPageController());
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Form(
              key: controller.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Login",
                        style: GoogleFonts.aleo(
                            fontSize: 50, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Log in to your existant Account",
                        style: TextStyle(
                            fontSize: 13, color: Colors.grey.shade600),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "E-mail",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    validator: (value) {
                      return controller.validateEmail(value);
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: controller.email.value,
                    onTapOutside: ((ajay) {
                      FocusScope.of(context).unfocus();
                    }),
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.email_outlined,
                        color: Colors.grey,
                      ),
                      hintText: "Enter your email...",
                      hintStyle: const TextStyle(color: Colors.grey),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey.withOpacity(.5),
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide()),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Kcolor.black, width: 1.5)),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Password",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    validator: (value) {
                      return controller.validatePass(value);
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: controller.pass.value,
                    onTapOutside: ((ajay) {
                      FocusScope.of(context).unfocus();
                    }),
                    onChanged: (password) =>
                        controller.onPasswordChanged(password),
                    obscureText: !controller.isVisible.value,
                    decoration: InputDecoration(
                      hintText: "Enter your password...",
                      hintStyle: const TextStyle(color: Colors.grey),
                      prefixIcon: const Icon(
                        Icons.lock_open_outlined,
                        color: Colors.grey,
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: IconButton(
                          onPressed: () {
                            controller.isVisible.value =
                                !controller.isVisible.value;
                          },
                          icon: controller.isVisible.value
                              ? const Icon(
                                  Icons.visibility,
                                  color: Colors.black,
                                )
                              : const Icon(
                                  Icons.visibility_off,
                                  color: Colors.grey,
                                ),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey.withOpacity(.5),
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide()),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Kcolor.black, width: 1.5)),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        width: 13,
                        height: 13,
                        decoration: BoxDecoration(
                            color: controller.isPasswordEightCharacters.value
                                ? Colors.green
                                : Colors.transparent,
                            border: controller.isPasswordEightCharacters.value
                                ? Border.all(color: Colors.transparent)
                                : Border.all(color: Colors.grey.shade400),
                            borderRadius: BorderRadius.circular(50)),
                        child: const Center(
                          child: Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 10,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "Contains at least 8 characters",
                        style: TextStyle(fontSize: 11),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 500),
                        width: 13,
                        height: 13,
                        decoration: BoxDecoration(
                            color: controller.hasPasswordOneNumber.value
                                ? Colors.green
                                : Colors.transparent,
                            border: controller.hasPasswordOneNumber.value
                                ? Border.all(color: Colors.transparent)
                                : Border.all(color: Colors.grey.shade400),
                            borderRadius: BorderRadius.circular(50)),
                        child: const Center(
                          child: Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 10,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "Contains at least 1 number",
                        style: TextStyle(fontSize: 11),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  MaterialButton(
                    height: 50,
                    minWidth: double.infinity,
                    onPressed: () {
                      controller.onClickLogIn(controller);
                    },
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: const Text(
                      "LOGIN",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 1.3,
                        width: size.width * .32,
                        color: Colors.grey.withOpacity(.5),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "Or",
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      Container(
                        height: 1.3,
                        width: size.width * .32,
                        color: Colors.grey.withOpacity(.5),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      loginBoxes(
                        imgUrl: "assets/icons/google.png",
                        onTap: () {
                          print("Google");
                        },
                      ),
                      const SizedBox(width: 15),
                      loginBoxes(
                        imgUrl: "assets/icons/facebook2.png",
                        onTap: () {
                          print("Facebook");
                        },
                      ),
                      const SizedBox(width: 15),
                      loginBoxes(
                        imgUrl: "assets/icons/github.png",
                        onTap: () {
                          print("Github");
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {
                            Get.toNamed(Routes.SIGNUP_PAGE);
                          },
                          child: Row(
                            children: [
                              Text(
                                "Don't have an account? ",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black.withOpacity(.5)),
                              ),
                              const Text(
                                "Sign Up",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


// ignore: must_be_immutable
class loginBoxes extends StatelessWidget {
  String imgUrl;
  void Function()? onTap;
  loginBoxes({
    super.key,
    required this.imgUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 5,
      height: 60,
      minWidth: 70,
      onPressed: onTap,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Image.asset(
        imgUrl,
        height: 27,
      ),
    );
  }
}
