import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/logOut_Box.dart';

class ProfilePageController extends GetxController {
  //Key
  final GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();
  //LogOut Dialog Box
  logOutDialogBox(
    context,
  ) {
    return showDialog(
      // barrierDismissible: false,
      context: context,
      builder: (context) {
        return logOutBox(context);
      },
    );
  }

}
