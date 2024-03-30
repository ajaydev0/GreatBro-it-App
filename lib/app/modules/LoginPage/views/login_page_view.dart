import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:greatbro_it/app/router/app_pages.dart';
import 'package:greatbro_it/main.dart';
import '../../../const/colors.dart';
import '../controllers/login_page_controller.dart';

class LoginPageView extends GetView<LoginPageController> {
  const LoginPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(LoginPageController());
    return Obx(
      () => GestureDetector(
        onTap: () {
          controller.activeColorEmail.value = false;
          controller.activeColorPass.value = false;
        },
        child: Scaffold(
            // backgroundColor: Colors.white.withOpacity(.9),
            body: ListView(
          children: [
            Column(
              children: [
                const SizedBox(height: 50),
                Image.asset(
                  "assets/signIn.jpg",
                  height: 200,
                ),
                const Text(
                  "LOG IN!",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Log in to your existant Account",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Kcolor.grey500),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GestureDetector(
                    onTap: () {
                      controller.activeColorEmail.value = true;
                    },
                    child: Material(
                      elevation: 3,
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        height: 55,
                        // width: size.width * .80,
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: controller.activeColorEmail.value ||
                                      controller.email.value.text != ""
                                  ? Colors.blue
                                  : Colors.white,
                            ),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)),
                        child: Row(
                          children: [
                            SizedBox(width: size.width * .05),
                            Image.asset(
                              "assets/icons/person.png",
                              height: 20,
                              color: controller.activeColorEmail.value ||
                                      controller.email.value.text != ""
                                  ? Colors.blue
                                  : Colors.grey.withOpacity(.7),
                            ),
                            SizedBox(width: size.width * .05),
                            Expanded(
                              child: TextFormField(
                                controller: controller.email.value,
                                onTapOutside: ((ajay) {
                                  FocusScope.of(context).unfocus();
                                }),
                                mouseCursor: MouseCursor.uncontrolled,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: controller.activeColorEmail.value ||
                                          controller.email.value.text != ""
                                      ? Colors.blue
                                      : Colors.grey.withOpacity(.7),
                                ),
                                onTap: () {
                                  controller.activeColorEmail.value = true;
                                },
                                cursorColor:
                                    controller.activeColorEmail.value ||
                                            controller.email.value.text != ""
                                        ? Colors.blue
                                        : Colors.grey.withOpacity(.7),
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: " Email",
                                    hintStyle: TextStyle(
                                      color: controller
                                                  .activeColorEmail.value ||
                                              controller.email.value.text != ""
                                          ? Colors.blue
                                          : Colors.grey.withOpacity(.7),
                                    )),
                              ),
                            ),
                            SizedBox(width: size.width * .05),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GestureDetector(
                    onTap: () {
                      controller.activeColorPass.value = true;
                    },
                    child: Material(
                      elevation: 3,
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        height: 55,
                        // width: size.width * .80,
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: controller.activeColorPass.value ||
                                      controller.pass.value.text != ""
                                  ? Colors.blue
                                  : Colors.white,
                            ),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)),
                        child: Row(
                          children: [
                            SizedBox(width: size.width * .05),
                            Image.asset(
                              "assets/icons/lock.png",
                              height: 20,
                              color: controller.activeColorPass.value ||
                                      controller.pass.value.text != ""
                                  ? Colors.blue
                                  : Colors.grey.withOpacity(.7),
                            ),
                            SizedBox(width: size.width * .05),
                            Expanded(
                              child: TextFormField(
                                obscureText:
                                    controller.activeObsecureText.value,
                                // autovalidateMode:
                                //     AutovalidateMode.onUserInteraction,
                                controller: controller.pass.value,
                                onTapOutside: ((ajay) {
                                  FocusScope.of(context).unfocus();
                                }),
                                mouseCursor: MouseCursor.uncontrolled,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: controller.activeColorPass.value ||
                                          controller.pass.value.text != ""
                                      ? Colors.blue
                                      : Colors.grey.withOpacity(.7),
                                ),
                                onTap: () {
                                  controller.activeColorPass.value = true;
                                },
                                cursorColor: controller.activeColorPass.value ||
                                        controller.pass.value.text != ""
                                    ? Colors.blue
                                    : Colors.grey.withOpacity(.7),
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: " Password",
                                    hintStyle: TextStyle(
                                      color: controller.activeColorPass.value ||
                                              controller.pass.value.text != ""
                                          ? Colors.blue
                                          : Colors.grey.withOpacity(.7),
                                    )),
                              ),
                            ),
                            IconButton(
                                onPressed: () {
                                  controller.activeObsecureText.value =
                                      !controller.activeObsecureText.value;
                                },
                                icon: Icon(
                                  controller.activeObsecureText.value
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: controller.activeColorPass.value ||
                                          controller.pass.value.text != ""
                                      ? Colors.blue
                                      : Colors.grey.withOpacity(.7),
                                )),
                            SizedBox(width: size.width * .015),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                // SizedBox(height:10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.black.withOpacity(.5)),
                          ))
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Material(
                      elevation: 3,
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: size.width * .40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.blue),
                        child: Text(
                          "LOG IN",
                          style: TextStyle(
                              color: Kcolor.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 1,
                      width: size.width * .35,
                      color: Colors.grey.withOpacity(.5),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        "Or",
                        style: TextStyle(color: Kcolor.grey500, fontSize: 12),
                      ),
                    ),
                    Container(
                      height: 1,
                      width: size.width * .35,
                      color: Colors.grey.withOpacity(.5),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Material(
                      elevation: 3,
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        height: 40,
                        width: 110,
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                          // border: Border.all(color: Colors.grey.withOpacity(.2))
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Image.asset("assets/icons/google.png"),
                            ),
                            Text(
                              "Google",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: size.width * .05),
                    Material(
                      elevation: 3,
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(0),
                          child: Image.asset("assets/icons/facebook.png"),
                        ),
                      ),
                    ),
                    SizedBox(width: size.width * .05),
                    Material(
                      elevation: 3,
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(0),
                          child: Image.asset("assets/icons/twitter.png"),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
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
                            Text(
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
          ],
        )),
      ),
    );
  }
}
