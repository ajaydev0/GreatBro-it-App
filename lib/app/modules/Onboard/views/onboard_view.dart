import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:greatbro_it/app/router/app_pages.dart';
import '../../../const/colors.dart';
import '../../../widgets/KText.dart';
import '../controllers/onboard_controller.dart';
import '../model/onBoardModel.dart';

class OnboardView extends GetView<OnboardController> {
  const OnboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // var appWidth = (MediaQuery.of(context).size.width) / 100;
    var appHeight = (MediaQuery.of(context).size.height) / 100;
    Get.put(OnboardController());
    return Obx(
      () => Scaffold(
          body: Stack(children: [
        Positioned(
          top: -70,
          left: -70,
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                color: Kcolor.main, borderRadius: BorderRadius.circular(500)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20, top: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              controller.selectedIndex.value == 3
                  ? SizedBox()
                  : TextButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all(Kcolor.main),
                      ),
                      onPressed: () {
                        controller.pageController.animateToPage(3,
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.linear);
                      },
                      child: Ktext(
                    text:     "Skip",
                    
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Kcolor.black,
                      )),
            ],
          ),
        ),
        // Image.asset("assets/bac.png"),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(height: 130),
            SizedBox(
              height: appHeight *68,
              // height: 530,
              // color: Colors.red,
              child: PageView.builder(
                onPageChanged: (value) {
                  controller.selectedIndex.value = value;
                },
                itemCount: onBoardList.length,
                controller: controller.pageController,
                itemBuilder: (context, index) {
                  var data = onBoardList[index];
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 220,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(data.imageUrl))),
                      ),
                      Ktext(
                       text:  data.title,
                   
                            fontSize: 20, fontWeight: FontWeight.bold,
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 30, top: 10),
                          child: Ktext( text:  data.description,fontSize: 13,color: Colors.grey[500])),
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  controller.selectedIndex.value == 0
                      ? TextButton(
                          style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.all(Colors.white),
                          ),
                          onPressed: () {},
                          child:  Ktext(
                           text:  "",
                            
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                          ))
                      : TextButton(
                          style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.all(Kcolor.main),
                          ),
                          onPressed: () {
                            controller.pageController.previousPage(
                                duration: const Duration(milliseconds: 400),
                                curve: Curves.linear);
                          },
                          child: Ktext(
                         text:    "Back",
                        
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Kcolor.black,
                          )),
                  Row(
                    children: [
                      Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                            color: controller.selectedIndex.value == 0
                                ? Kcolor.main
                                : Colors.grey[300],
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                            color: controller.selectedIndex.value == 1
                                ? Kcolor.main
                                : Colors.grey[300],
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                            color: controller.selectedIndex.value == 2
                                ? Kcolor.main
                                : Colors.grey[300],
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                            color: controller.selectedIndex.value == 3
                                ? Kcolor.main
                                : Colors.grey[300],
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ],
                  ),
                  controller.selectedIndex.value == 3
                      ? TextButton(
                        
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Kcolor.main),
                            overlayColor:
                                MaterialStateProperty.all(Kcolor.main),
                          ),
                          onPressed: () {
                            Get.toNamed(Routes.login_Page);
                          },
                          child: Ktext(
                          text:   "Start",
                         
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Kcolor.white.withOpacity(.9),
                          ))
                      : TextButton(
                          style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.all(Kcolor.main),
                          ),
                          onPressed: () {
                            controller.pageController.nextPage(
                                duration: const Duration(milliseconds: 400),
                                curve: Curves.linear);
                          },
                          child: Ktext(
                         text:    "Next",
                         
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Kcolor.black,
                          )),
                ],
              ),
            ),
            const SizedBox(height: 30),
            // controller.selectedIndex.value == 2
            //     ? SizedBox(
            //         height: 50,
            //         width: 250,
            //         child: ElevatedButton(
            //             style: ElevatedButton.styleFrom(
            //                 elevation: 5,
            //                 backgroundColor: Kcolor.main,
            //               ),
            //             onPressed: () {
            //               // Get.toNamed(Routes.selectUserPage);
            //             },
            //             child:  Text("Get Started",
            //                 style: TextStyle(
            //                     fontWeight: FontWeight.bold, fontSize: 16,color: Kcolor.white))))
            //     : SizedBox(
            //         height: 50,
            //         width: 250,
            //         child: ElevatedButton(
            //             style: ElevatedButton.styleFrom(
            //                 elevation: 5,
            //                 backgroundColor: Kcolor.main,
            //                 foregroundColor: Kcolor.black),
            //             onPressed: () {
            //               controller.pageController.nextPage(
            //                   duration: const Duration(milliseconds: 400),
            //                   curve: Curves.linear);
            //             },
            //             child:  Text("Next",
            //                 style: TextStyle(
            //                     fontWeight: FontWeight.bold, fontSize: 16,color: Kcolor.white)))),
          ],
        ),
      ])),
    );
  }
}
