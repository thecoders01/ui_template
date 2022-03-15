import 'package:flutter/material.dart';
import 'package:ui_template/src/netflix_ui/controller/controller.dart';
import 'package:ui_template/src/netflix_ui/widget/grid_widget.dart';


class Allmovie extends StatelessWidget {
  const Allmovie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.black.withOpacity(0.9),
        title: Text("All Movie"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
           // borderRadius: BorderRadius.circular(15), 
            color: Colors.black.withOpacity(0.9),

            ),
        child: ListView.builder(
        itemCount: navigationController.movies.length,
        itemBuilder: (BuildContext context,int index){
          return Grid_widget(img: navigationController.movies[index]["image"],
          name: navigationController.movies[index]["title"],
          isgood: navigationController.movies[index]["isgood"],
          description:navigationController.movies[index]["quality"],
          mark:navigationController.movies[index]["mark"] ,
          );
        }
        ),
      ),
    );
  }
}