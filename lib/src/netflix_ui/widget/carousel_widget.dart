import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_template/src/netflix_ui/controller/controller.dart';
import 'package:ui_template/src/netflix_ui/controller/navigationcontroler.dart';

class Carousel_widget extends StatelessWidget {
  const Carousel_widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
    options: CarouselOptions(
      height: 500.0,
      aspectRatio: 16/9,
      viewportFraction: 0.70,
      enlargeCenterPage: true,
      onPageChanged: (index, reason) {
      navigationController.current.value = index;
      },
    ),
    carouselController: navigationController.carouselController,

    items: navigationController.movies.map((movie) {
      return Builder(
        builder: (BuildContext context) {
          return Obx(()=>Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.9),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 320,
                    margin: EdgeInsets.only(top: 30),
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(movie['image'], fit: BoxFit.cover),
                  ),
                  SizedBox(height: 20),
                  Text(movie['title'], style: 
                    TextStyle(
                      color: Colors.white,
                      fontSize: 16.0, 
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  // rating
                  SizedBox(height: 20),
                  Container(
                    child: Text(movie['title'], style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey.shade600
                    ), textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 20),
                  AnimatedOpacity(
                    duration: Duration(milliseconds: 500),
                    opacity: navigationController.current.value == navigationController.movies.indexOf(movie) ? 1.0 : 0.0,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Icon(Icons.star, color: Colors.orangeAccent, size: 20,),
                                SizedBox(width: 5),
                                Text(movie['mark'], style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.white
                                ),)
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Icon(Icons.access_time, color: Colors.grey.shade600, size: 20,),
                                SizedBox(width: 5),
                                Text('2h', style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.grey.shade600
                                ),)
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: Row(
                              children: [
                                Icon(Icons.play_circle_filled, color: Colors.grey.shade600, size: 20,),
                                SizedBox(width: 5),
                                Text('Watch', style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.grey.shade600
                                ),)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ));
        },
      );
    }).toList(),
  );
  }
}
