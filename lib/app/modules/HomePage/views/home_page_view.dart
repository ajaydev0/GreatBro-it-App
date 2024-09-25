// ignore_for_file: unused_local_variable
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:greatbro_it/app/const/colors.dart';
import 'package:greatbro_it/app/router/app_pages.dart';
import 'package:greatbro_it/app/widgets/KText.dart';
import 'package:greatbro_it/main.dart';
import '../controllers/home_page_controller.dart';

class HomePageView extends GetView<HomePageController> {
  const HomePageView({super.key});
  @override
  Widget build(BuildContext context) {
    var user = FirebaseAuth.instance.currentUser;
    var controller = Get.put(HomePageController());
    return Scaffold(
      backgroundColor: Kcolor.white,
      appBar: AppBar(
        backgroundColor: Kcolor.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
          child: Material(
            borderRadius: BorderRadius.circular(50),
            elevation: 3,
            child: 
            
             Container(
                    alignment: Alignment.center,
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(user?.photoURL ?? ""),
                          fit: BoxFit.cover,
                        ),
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(50)),
                  ),
          ),
        ),
        title: Ktext(
          text: "Hi, ${user!.displayName ?? "Null Name"}",
          fontSize: 13,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: Material(
              elevation: 3,
              borderRadius: BorderRadius.circular(20),
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.notification_Page);
                },
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Kcolor.white),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Image.asset(
                      "assets/icons/notification.png",
                      color: Colors.grey[600],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 0, right: 0, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 0),
              // Padding(
              //   padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Row(
              //         children: [
              //           Container(
              //             alignment: Alignment.center,
              //             height: 38,
              //             width: 38,
              //             decoration: BoxDecoration(
              //                 image: const DecorationImage(
              //                   image: AssetImage("assets/admin.jpg"),
              //                   fit: BoxFit.cover,
              //                 ),
              //                 color: Colors.grey,
              //                 borderRadius: BorderRadius.circular(50)),
              //           ),
              //           const Row(
              //             children: [
              //               SizedBox(width: 10),
              //               // Text(
              //               //   "Hello",
              //               //   style: TextStyle(fontSize: 15),
              //               // ),
              //               Text(
              //                 "Hi, Ajay",
              //                 style: TextStyle(
              //                     fontWeight: FontWeight.bold, fontSize: 17),
              //               ),
              //             ],
              //           ),

              //           // IconButton(
              //           //     onPressed: () {},
              //           //     icon: Icon(
              //           //       Icons.notifications,
              //           //       size: 26,
              //           //       color: Kcolor.black,
              //           //     )),
              //         ],
              //       ),
              //       Material(
              //         elevation: 3,
              //         borderRadius: BorderRadius.circular(20),
              //         child: GestureDetector(
              //           onTap: () {
              //             Get.toNamed(Routes.NOTIFICATIONS_PAGE);
              //           },
              //           child: Container(
              //             height: 35,
              //             width: 35,
              //             decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(20),
              //                 color: Kcolor.white),
              //             child: Padding(
              //               padding: const EdgeInsets.all(5),
              //               child: Image.asset(
              //                 "assets/icons/notification.png",
              //                 color: Colors.grey[600],
              //               ),
              //             ),
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),

              // Text(
              //   "Find your next trip",
              //   style: TextStyle(fontSize: 13),
              // ),

              
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Ktext(
                  text: "What do you want to learn today?",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Material(
                    borderRadius: BorderRadius.circular(15),
                    elevation: 3,
                    child: Container(
                        height: 50,
                        width: size.width * .90,
                        decoration: BoxDecoration(
                            color: Kcolor.white,
                            // border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Image.asset(
                                  "assets/icons/search.png",
                                  color: Colors.grey[500],
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Expanded(
                                child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Search Course...",
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontFamily: "Aleo")),
                            )),
                            Container(
                              height: size.height * .05,
                              width: size.width * .106,
                              // height: 37,
                              // width: 37,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Kcolor.main,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(7),
                                child: Image.asset(
                                  "assets/icons/menu.png",
                                  color: Colors.grey[100],
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                          ],
                        )),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
                child: Material(
                  elevation: 3,
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    height: size.height * .12,
                    // height : 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Kcolor.main),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, top: 10, bottom: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  width: size.width * .415,
                                  // width: 150,
                                  child: Ktext(
                                    text: "Share With Your Friend And Discount",
                                    fontSize: 12,
                                    color: Kcolor.white,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  )),
                              Ktext(
                                text: "75%",
                                fontSize: 25,
                                color: Kcolor.white,
                                fontWeight: FontWeight.bold,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Image.asset(
                            "assets/gift.png",
                            height: size.height * .093,
                            //  height: 70,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Obx(
                () => Padding(
                  padding: const EdgeInsets.only(top: 13, bottom: 15),
                  child: SizedBox(
                    height: size.height * .053,
                    // height: 40,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: GestureDetector(
                            onTap: () {
                              controller.currentCourse.value = 0;
                            },
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black.withOpacity(.05)),
                                  color: controller.currentCourse.value == 0
                                      ? Kcolor.main
                                      : Kcolor.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 15),
                                child: Ktext(
                                  text: "UI/UX",
                                  color: controller.currentCourse.value == 0
                                      ? Kcolor.white
                                      : Kcolor.grey500,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: GestureDetector(
                            onTap: () {
                              controller.currentCourse.value = 1;
                            },
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black.withOpacity(.05)),
                                  color: controller.currentCourse.value == 1
                                      ? Kcolor.main
                                      : Kcolor.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 15),
                                child: Ktext(
                                  text: "Graphics Design",
                                  color: controller.currentCourse.value == 1
                                      ? Kcolor.white
                                      : Kcolor.grey500,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: GestureDetector(
                            onTap: () {
                              controller.currentCourse.value = 2;
                            },
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black.withOpacity(.05)),
                                  color: controller.currentCourse.value == 2
                                      ? Kcolor.main
                                      : Kcolor.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 15),
                                child: Ktext(
                                  text: "Digital Marketing",
                                  color: controller.currentCourse.value == 2
                                      ? Kcolor.white
                                      : Kcolor.grey500,
                                  // fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 15),
                          child: GestureDetector(
                            onTap: () {
                              controller.currentCourse.value = 3;
                            },
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black.withOpacity(.05)),
                                  color: controller.currentCourse.value == 3
                                      ? Kcolor.main
                                      : Kcolor.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 15),
                                child: Ktext(
                                  text: "App Development",
                                  color: controller.currentCourse.value == 3
                                      ? Kcolor.white
                                      : Kcolor.grey500,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * .306,
                // height: 230,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.courseList.length,
                  itemBuilder: (context, index) {
                    var data = controller.courseList;
                    return Padding(
                      padding: const EdgeInsets.only(left: 20, right: 5),
                      child: Material(
                        // elevation: 5,
                        borderRadius: BorderRadius.circular(10),
                        child: GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.course_Details_Page,
                                arguments: data[index]);
                          },
                          child: Container(
                              // height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black.withOpacity(.1)),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    // SizedBox(height: 125),
                                    Hero(
                                      transitionOnUserGestures: true,
                                      tag: data[index].title,
                                      child: Image.asset(
                                        data[index].url,
                                        height: 120,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.file_copy_outlined,
                                          size: 13,
                                          color: Kcolor.grey500,
                                        ),
                                        Ktext(
                                          text: " ${data[index].lesson} Lesson",
                                          fontSize: 10,
                                          color: Kcolor.grey500,
                                        ),
                                      ],
                                    ),
                                    // SizedBox(height: 3),
                                    Row(
                                      children: [
                                        Ktext(
                                          text: data[index].title,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ],
                                    ),
                                    // SizedBox(height: 5),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Ktext(
                                          text: "\$${data[index].price}",
                                          color: Colors.amber[700],
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        Image.asset(
                                          "assets/icons/love.png",
                                          height: 20,
                                          color: Kcolor.grey500,
                                        )
                                        // Icon(Icons.favorite_border),
                                      ],
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
