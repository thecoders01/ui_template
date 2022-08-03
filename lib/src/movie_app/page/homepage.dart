import 'package:flutter/material.dart';
import 'package:ui_template/src/movie_app/widget/bottombar.dart';
import 'package:ui_template/src/movie_app/widget/carouselslider_widget.dart';
import 'package:ui_template/src/movie_app/widget/continue_widget.dart';
import 'package:ui_template/src/movie_app/widget/navbar.dart';
import 'package:ui_template/src/movie_app/widget/popular_widget.dart';

// ignore: camel_case_types
class Netflix_Homepage extends StatefulWidget {
  Netflix_Homepage({Key? key}) : super(key: key);

  @override
  State<Netflix_Homepage> createState() => _Netflix_HomepageState();
}

// ignore: camel_case_types
class _Netflix_HomepageState extends State<Netflix_Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.black,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
                child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                const Carousel_widget(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Continue Watching",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Continue_watching(
                          img: "assets/netflix/thewitcheranimate.jpeg",
                          name: "The Witcher",
                          progress: 0.4,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Continue_watching(
                          img: "assets/netflix/moneyheist.webp",
                          name: "Money Heist",
                          progress: 0.8,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Continue_watching(
                          img: "assets/netflix/thewitcheranimate.jpeg",
                          name: "The Witcher",
                          progress: 0.4,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Popular on Netflix",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 5.0),
                  child: Row(
                    children: [
                      Popular_widget(
                        img: "assets/netflix/alice.jpeg",
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Popular_widget(
                        img: "assets/netflix/shabonepaysage.jpeg",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                )
              ],
            )),
          ),

          // ()
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Netflix_Navbar(),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: bottombar(),
          ),
        ],
      ),
    );
  }
}
/*
 
*/