import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_template/src/netflix_ui/controller/controller.dart';
import 'package:ui_template/src/netflix_ui/page/allmoviepage.dart';
import 'package:ui_template/src/netflix_ui/page/homepage.dart';
import 'package:ui_template/src/netflix_ui/page/movieInfo.dart';
import 'package:ui_template/src/netflix_ui/widget/navbar.dart';

class Layout_movie extends StatefulWidget {
  Layout_movie({Key? key}) : super(key: key);

  @override
  State<Layout_movie> createState() => _Layout_movieState();
}

class _Layout_movieState extends State<Layout_movie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Obx(() =>IndexedStack(
    index: navigationController.selectedTab.value,
    children: [
      
   homepage(),
  MovieInfo(),
  Allmovie(),
   
  ],)

),
          Align(
            alignment: Alignment.bottomCenter,
            child: navbar(),
          )
        ],
      ),
    );
  }
}