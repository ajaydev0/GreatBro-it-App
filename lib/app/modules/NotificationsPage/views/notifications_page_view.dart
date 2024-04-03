import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../const/colors.dart';
import '../../../widgets/KText.dart';
import '../controllers/notifications_page_controller.dart';

class NotificationsPageView extends GetView<NotificationsPageController> {
  const NotificationsPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Kcolor.main,
        leading: Padding(
          padding: const EdgeInsets.only(top: 10, left: 20, bottom: 5),
          child: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 25,
                color: Colors.white,
              )),
        ),
        title: Ktext(
          text: "Notifications",
          color: Colors.white.withOpacity(.9),
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Container(
          //   padding: EdgeInsets.only(right: 20, left: 20, top: 50),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.start,
          //     crossAxisAlignment: CrossAxisAlignment.end,
          //     children: [

          //       // Container(
          //       //   height: 30,
          //       //   width: 30,
          //       //   decoration:
          //       //       BoxDecoration(borderRadius: BorderRadius.circular(20)),
          //       //   child: Padding(
          //       //     padding: const EdgeInsets.all(5),
          //       //     child: Image.asset(
          //       //       "assets/icons/search.png",
          //       //       color: Colors.grey[600],
          //       //     ),
          //       //   ),
          //       // ),
          //     ],
          //   ),
          // ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 15, bottom: 0),
                  child: Row(
                    children: [
                      Ktext(
                        text: "New",
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                ),
                CommentNotification(),
                LoveNotification(),
                LikeNotification(),
                CommentNotification(),
                LikeNotification(),
                CommentNotification(),
                LikeNotification(),
                CommentNotification(),
                LikeNotification(),
                CommentNotification(),
                LikeNotification(),
                CommentNotification(),
                LikeNotification(),
                CommentNotification(),
                LikeNotification(),
                CommentNotification(),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          )),
        ],
      ),
    );
  }

  // Comment Notification Widget
  Widget CommentNotification() {
    return Container(
      height: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://images.pexels.com/photos/2385044/pexels-photo-2385044.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load")),
                          // color: Colors.amber,
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.green[400],
                          borderRadius: BorderRadius.circular(50)),
                      child: const Icon(
                        Icons.chat_bubble,
                        size: 10,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Ktext(
                          text: "Ajay Dev",
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        Ktext(
                          text: " also commented on",
                          fontSize: 15,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Ktext(
                          text: "Raju Raj",
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        Ktext(
                          text: "'s photo,",
                          fontSize: 15,
                        ),
                      ],
                    ),
                    Ktext(
                      text: "30 minutes ago",
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz)),
            ],
          ),
        ],
      ),
    );
  }

  //Love React Notification Widget
  Widget LoveNotification() {
    return Container(
      height: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://images.pexels.com/photos/13273085/pexels-photo-13273085.jpeg?auto=compress&cs=tinysrgb&w=600")),
                          // color: Colors.amber,
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.red[500],
                          borderRadius: BorderRadius.circular(50)),
                      child: const Icon(
                        Icons.favorite,
                        size: 10,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Ktext(
                          text: "Lima Dash",
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        Ktext(
                          text: " reacted on ",
                          fontSize: 15,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Ktext(
                          text: "Ajay Dev",
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        Ktext(
                          text: "'s photo,",
                          fontSize: 15,
                        ),
                      ],
                    ),
                    Ktext(
                      text: "30 minutes ago",
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz)),
            ],
          ),
        ],
      ),
    );
  }

  //Like React Notification Widget
  Widget LikeNotification() {
    return Container(
      height: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600")),
                          // color: Colors.amber,
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.blue[400],
                          borderRadius: BorderRadius.circular(50)),
                      child: const Icon(
                        Icons.thumb_up,
                        size: 10,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Ktext(
                          text: "Abdullah Minhaj",
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                        Ktext(
                          text: " reacted on ",
                          fontSize: 16,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Ktext(
                          text: "Ajay Dev",
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                        Ktext(
                          text: "'s photo,",
                          fontSize: 16,
                        ),
                      ],
                    ),
                    Ktext(
                      text: "30 minutes ago",
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz)),
            ],
          ),
        ],
      ),
    );
  }
}
