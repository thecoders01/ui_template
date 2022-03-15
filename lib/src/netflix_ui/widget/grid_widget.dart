import 'package:flutter/material.dart';
import 'package:ui_template/src/netflix_ui/widget/fav_button.dart';

class Grid_widget extends StatelessWidget {
  final String img;
  final String name;
  final String mark;
  final bool isgood;
  final int isliked;
  final String description;
  const Grid_widget({Key? key,
  required this.img,  
   required this.name, 
   required this.isgood, 
   required this.isliked, 
    required this.mark, 
   required this.description, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:58.0,right: 58.0,bottom: 8),
      child: Container(
      // color: Colors.red,
         height: 360,
          // width: 160,

           child: Stack(
             children: [
               Align(
                 alignment: Alignment.topLeft,
                 child:isgood? Padding(
                   padding: const EdgeInsets.only(top:3.0,left:28),
                   child: Container(
height: 20,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5), 
                        color:(description == "Popular")?Colors.orangeAccent: Colors.blue,
                       
                        
                        ),

                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(description, style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.white
                                          ),),
                          ],
                        ),
                   ),
                 ):Container()
               ),
               Align(alignment: Alignment.topRight,
                       child: fav_button(isliked),
                       ),
                 Align(
                   alignment: Alignment.center,
                   child: Container(
                      height: 300,
                     // margin: EdgeInsets.only(top: 30),
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset(img, fit: BoxFit.cover),
                    ),
                 ),
             //  SizedBox(height: 5),
             Align(
                   alignment: Alignment.bottomCenter,
                 child: Padding(
                   padding: const EdgeInsets.only(top:334.0),
                   child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                               
                                Text(name, style: 
                          TextStyle(
                            color: Colors.white,
                            fontSize: 15.0, 
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(width: 20),
                         Container(
                                  child: Row(
                                    children: [
                                     
                                      Text(mark, style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.white
                                      ),),
                                      SizedBox(width: 5),
                                       Icon(Icons.star, color: Colors.orangeAccent, size: 20,),
                                      
                                    ],
                                  ),
                                ),
                              
                              ],
                            ),
                 ),
               ),
             ],
           ),
      ),
    );
  }
}