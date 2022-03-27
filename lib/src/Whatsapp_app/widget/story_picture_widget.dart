import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_template/src/Whatsapp_app/widget/story_expended.dart';

class Storywidget extends StatelessWidget {
     final String name;
   final String img;
  const Storywidget({Key? key
  , required this.name,
  required this.img
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(

        children: [
             GestureDetector(
               onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MoreStories()));
                
               },
               child: Container(
               height: 65,
                     width: 65,
                     decoration: BoxDecoration(
                      
                        gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    stops: [
                      0.1,
                      0.4,
                      0.6,
                      0.9,
                    ],
                    colors: [
                      Colors.green,
                      Colors.teal,
                      Colors.indigo,
                      Colors.teal,
                    ],
                  ),
                       shape: BoxShape.circle,
                     ),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: CircleAvatar(
                          radius: 38,
                              backgroundColor: Colors.black,
                          child: Padding(
                            padding: const EdgeInsets.all(3.8),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 30,
                              backgroundImage: AssetImage(img),
                             
                            ),
                          ),
                        ),
                      ),
                    ),
             ),
                   SizedBox(height: 7,),
                          Text(name,style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,))
        ],
      ),
    );
  }
}