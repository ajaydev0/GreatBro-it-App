import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    // size = MediaQuery.of(context).size;
    Get.put(SplashController());

    return Scaffold(
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Image.asset("assets/logo.png",height: 100,),
                // Container(
                //   width: 140,
                //   height: 110,
                //   decoration: const BoxDecoration(
                //       image: DecorationImage(
                //           image: AssetImage("assets/logo.png"))),
                // ),
              ],
            ),
            // const SizedBox(height: 5),
            // const CupertinoActivityIndicator(),
            // CircularProgressIndicator(),
            // LinearProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
