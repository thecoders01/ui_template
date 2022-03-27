import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class feedwidget extends StatelessWidget {
   final String name;
   final String msg;
   final String nbrmsg;
   final String img;
   final String hour;
   final bool isSeen;
   final bool hasStory;

  const feedwidget({Key? key, required this.name,
  required this.msg,
  required this.nbrmsg,
  required this.img,
  required this.hour,
  required this.isSeen,
  required this.hasStory,
  
  
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top:8.0,bottom: 8.0,left: 2,right: 2),
      child: Container(
        color: Colors.transparent,
        width: double.infinity,
        height: 90,
        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             
              Padding(
                padding: const EdgeInsets.only(left:18.0),
                child: Row(
                  
                  children: [
                 Container(
	height: 70,
      width: 70,
      decoration: BoxDecoration(
                  
                    gradient:hasStory? LinearGradient(
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
              ):LinearGradient(
                colors: [
                  Colors.transparent,
                  Colors.transparent
                ],
              ),
                   shape: BoxShape.circle,
                 ),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey.withOpacity(.2),
                      radius: 30,
                      backgroundImage: AssetImage(img),
                     
                    ),
                  ),
                ),
             SizedBox(width: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(name,style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),),

                          SizedBox(height: 7,),
                        Text(msg,style: TextStyle(
                          color: Colors.grey.withOpacity(.9),
                          fontSize: 13,
                          fontWeight: FontWeight.bold))
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                 padding: const EdgeInsets.only(right:18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(hour,style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15),),
                        SizedBox(height: 7,),
                     isSeen?   CircleAvatar(
                          backgroundColor: Colors.red,
                          maxRadius: 11,
                        child:  Text(nbrmsg,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 12),)
                        ):Container()
                      ],
                    ),
              )
            ],
          ),
      ),
    )
    ;
  }
}