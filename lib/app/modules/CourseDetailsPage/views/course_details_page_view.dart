// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:greatbro_it/main.dart';
import '../../../const/colors.dart';
import '../../../widgets/KText.dart';
import '../controllers/course_details_page_controller.dart';

class CourseDetailsPageView extends GetView<CourseDetailsPageController> {
  const CourseDetailsPageView({super.key});
  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;
    return Scaffold(
        body: Stack(
      children: [
        ListView(
          // padding: EdgeInsets.symmetric(horizontal: 20.0),
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: size.height * .38,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 40, right: 40, top: 60, bottom: 30),
                  child: Hero(
                      transitionOnUserGestures: true,
                      tag: data.title,
                      child: Image.asset(data.url)),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 601,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Padding(
                  // padding: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.only(
                    top: size.height * .025,
                    left: size.width * .050,
                    right: size.width * .050,
                  ),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              // color: Colors.red,
                              height: size.height * .10,
                              width: size.width * .65,
                              child: Ktext(
                                text: data.title,
                                fontWeight: FontWeight.bold,
                                fontSize: 23,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              )),
                          SizedBox(
                            width: size.width * .08,
                          ),
                          Container(
                              alignment: Alignment.center,
                              // color: Colors.red,
                              height: size.height * .07,
                              width: size.width * .15,
                              child: Ktext(
                                text: "\$${data.price}",
                                fontWeight: FontWeight.bold,
                                fontSize: 28,
                                color: Colors.amber,
                              )),
                        ],
                      ),
                      Row(
                        children: [
                          Material(
                            elevation: 2,
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              // alignment: Alignment.center,
                              height: size.height * .05,
                              width: size.width * .40,
                              decoration: BoxDecoration(
                                  // border: Border.all(
                                  //     color: Colors.black.withOpacity(.1)),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.people_outline_outlined,
                                    color: Colors.amber,
                                    size: 21,
                                  ),
                                  Ktext(
                                    text: "  ${data.student} Student",
                                    fontWeight: FontWeight.bold,
                                    color: Kcolor.grey500,
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: size.width * .06),
                          Material(
                            elevation: 2,
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              // alignment: Alignment.center,
                              height: size.height * .05,
                              width: size.width * .18,
                              decoration: BoxDecoration(
                                  // border: Border.all(
                                  //     color: Colors.black.withOpacity(.1)),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.star_border,
                                    color: Colors.amber,
                                    size: 21,
                                  ),
                                  Ktext(
                                    text: " ${data.rating}",
                                    fontWeight: FontWeight.bold,
                                    color: Kcolor.grey500,
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: size.width * .06),
                          Material(
                            elevation: 2,
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              // alignment: Alignment.center,
                              height: size.height * .05,
                              width: size.width * .18,
                              decoration: BoxDecoration(
                                  // border: Border.all(
                                  //     color: Colors.black.withOpacity(.1)),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.favorite_border,
                                    color: Colors.amber,
                                    size: 18,
                                  ),
                                  Ktext(
                                    text: " ${data.favorite}K",
                                    fontWeight: FontWeight.bold,
                                    color: Kcolor.grey500,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: size.height * .02),
                      Padding(
                        padding: EdgeInsets.only(
                          left: size.width * .02,
                        ),
                        child: Ktext(
                          text: "About Course",
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: size.height * .01),
                      Padding(
                        padding: EdgeInsets.only(
                          left: size.width * .02,
                          right: size.width * .02,
                        ),
                        child: Ktext(
                            text:
                                "A Course by Ktext messaging, Ktexting, is the act composing and sending electronic messages, consisting of alphabetic desktops/la…",
                            color: Colors.grey[500],
                            fontSize: 13),
                      ),
                      // SizedBox(height: size.height * .020),
                      Expanded(
                        child: Column(
                          children: [
                            Course_Parts(
                                data: data,
                                text: "Introduction",
                                minute: "10",
                                ontap: () {
                                  print("Introduction");
                                }),
                            Course_Parts(
                                data: data,
                                text: "Basics",
                                minute: "20",
                                ontap: () {
                                  print("Basics");
                                }),
                            Course_Parts(
                                data: data,
                                text: "Advanced",
                                minute: "60",
                                ontap: () {
                                  print("Advanced");
                                }),
                            SizedBox(height: size.height * .11),
                          ],
                        ),
                      ),
                      // SizedBox(height: size.height * .10),
                    ],
                  ),
                ),
              ),
            ),
            // SizedBox(height: size.height * .09),
          ],
        ),
        SizedBox(height: size.height * .10),
        Padding(
          padding:
              EdgeInsets.only(left: size.width * .055, top: size.height * .060),
          child: Material(
            elevation: 3,
            borderRadius: BorderRadius.circular(20),
            child: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Kcolor.white),
                child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Padding(
                      padding: const EdgeInsets.only(left: 2.5),
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                        color: Kcolor.grey500,
                      ),
                    ))),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: size.width * .05,
            right: size.width * .05,
            bottom: size.height * .02,
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Material(
                  elevation: 3,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: size.height * .07,
                    width: size.width * .18,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(13),
                    child: Image.asset("assets/icons/cart.png"),
                  ),
                ),
                SizedBox(width: size.width * .04),
                Material(
                  elevation: 3,
                  borderRadius: BorderRadius.circular(10),
                  child: GestureDetector(
                    onTap: () {
                      // print(data.lesson);
                    },
                    child: Container(
                      height: size.height * .07,
                      width: size.width * .68,
                      decoration: BoxDecoration(
                        color: Kcolor.main,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: Ktext(
                        text: "Checkout",
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Kcolor.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}

// ignore: camel_case_types
class Course_Parts extends StatelessWidget {
  String text;
  String minute;
  void Function()? ontap;
  dynamic data;

  Course_Parts({
    super.key,
    required this.text,
    required this.minute,
    required this.ontap,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: size.height * .018,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Material(
            borderRadius: BorderRadius.circular(15),
            elevation: 3,
            child: GestureDetector(
              onTap: ontap,
              child: Container(
                  height: size.height * .10,
                  width: size.width * .90,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      // border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(width: size.width * .03),
                          Material(
                            elevation: 1,
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              height: size.height * .07,
                              width: size.width * .18,
                              // height: 37,
                              // width: 37,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black.withOpacity(.1)),
                                borderRadius: BorderRadius.circular(10),
                                color: Kcolor.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(7),
                                child: Image.asset(
                                  data.url,
                                  // color: Colors.grey[100],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: size.width * .02),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Ktext(
                                text: text,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                              Ktext(
                                text: "$minute minute",

                                fontSize: 12,
                                // fontWeight: FontWeight.bold,
                                color: Kcolor.grey500,
                              ),
                            ],
                          ),
                        ],
                      ),

                      // SizedBox(width: size.width * .07),
                      Padding(
                        padding: EdgeInsets.only(right: size.width * .05),
                        child: Container(
                          height: 40,
                          width: 40,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Kcolor.main,
                              borderRadius: BorderRadius.circular(50)),
                          child: Padding(
                            padding: const EdgeInsets.all(11),
                            child: Image.asset(
                              "assets/icons/play.png",
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
