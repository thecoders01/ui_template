import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_template/src/movie_app/controller/controller.dart';


class Carousel_widget extends StatelessWidget {
  const Carousel_widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(()=>Column(
      children: [
        CarouselSlider(
        options: CarouselOptions(
          height: 300.0,
          aspectRatio: 8/4,
         // aspectRatio: 16/9,
          viewportFraction: 0.50,
          enlargeCenterPage: true,
          onPageChanged: (index, reason) {
          Netflix_navigationController.current.value = index;
          },
        ),
        carouselController: Netflix_navigationController.carouselController,

        items: Netflix_navigationController.movies.map((movie) {
          return Builder(
            builder: (BuildContext context) {
              return  Container(
                        height: 120,
                        //margin: EdgeInsets.only(top: 30),
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(movie['image'], fit: BoxFit.cover),
                      );
            },
          );
        }).toList(),
  ),
SizedBox(height:25),

  DotsIndicator(
  dotsCount: Netflix_navigationController.movies.length,
  position: Netflix_navigationController.current.value.toDouble(),
  decorator: DotsDecorator(
    activeColor: Colors.red,
    size: const Size.square(7.0),
    activeSize: const Size(20.0, 7.0),
    activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
  ),
)
      ],
    ));
  }
}
