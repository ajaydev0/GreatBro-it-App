import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/video_page_controller.dart';

class VideoPageView extends GetView<VideoPageController> {
  const VideoPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VideoPageView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'VideoPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
