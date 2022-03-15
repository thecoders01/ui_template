import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_template/src/netflix_ui/controller/navigationcontroler.dart';
import 'package:ui_template/src/netflix_ui/page/layout_movie.dart';

void main() {
  Get.put(NavigationController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: Layout_movie()
    );
  }
}
