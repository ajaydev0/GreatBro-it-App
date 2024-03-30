import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:greatbro_it/app/modules/HomePage/views/home_page_view.dart';
import 'package:greatbro_it/app/modules/ProfilePage/views/profile_page_view.dart';
import 'package:greatbro_it/app/modules/VideoPage/views/video_page_view.dart';

class NavBarController extends GetxController {
  RxInt currentindex = 0.obs;

  List pages = [
    const HomePageView(),
    const VideoPageView(),
    Container(color: Colors.green),
    const ProfilePageView()
  ];
}
