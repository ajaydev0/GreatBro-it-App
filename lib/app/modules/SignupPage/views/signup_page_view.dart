import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../main.dart';
import '../../../const/colors.dart';
import '../controllers/signup_page_controller.dart';

class SignupPageView extends GetView<SignupPageController> {
  const SignupPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('SignupPageView'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Column(
              children: [
                 Image.asset(
                  "assets/signIn.jpg",
                  height: 200,
                ),
                const Text(
                  "SIGN UP",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Please Register to Join Us",
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
                                    hintText: " First Name",
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
                              "assets/icons/email.png",
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
                              "assets/icons/phone.png",
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
                                    hintText: " Phone Number",
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
                  SizedBox(height: 15),
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
                                    hintText: " Last Name",
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
                          "Register",
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
                    TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Row(
                          children: [
                            Text(
                              "You have an account? ",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black.withOpacity(.5)),
                            ),
                            Text(
                              "Log In",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.blue,fontWeight: FontWeight.bold),
                            ),
                          ],
                        ))
                  ],
                ),
              ],
            )
          ],
        ));
  }
}
