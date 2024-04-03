import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:greatbro_it/app/const/colors.dart';
import '../../../router/app_pages.dart';
import '../../../widgets/KText.dart';

Dialog logOutBox(BuildContext context) {
  return Dialog(
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20))),
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 170,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Ktext(
            text: "Log Out ",
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
          Ktext(text: "Are you sure want to log out ?"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 35,
                width: 90,
                // width: 180,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.grey[400], // button Background color
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Ktext(
                          text: "No",
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: 35,
                width: 90,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Kcolor.main,
                    ),
                    onPressed: () {
                      // box.value.erase();
                      Get.offAllNamed(Routes.login_Page);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Ktext(
                          text: "Yes",
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ],
                    )),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
