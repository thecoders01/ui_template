import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ui_template/src/Whatsapp_app/controller/controller.dart';
import 'package:ui_template/src/Whatsapp_app/widget/story_expended.dart';
import 'package:ui_template/src/Whatsapp_app/widget/story_picture_widget.dart';
import 'package:dotted_border/dotted_border.dart';

class Storypage extends StatelessWidget {
  const Storypage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       height: MediaQuery.of(context).size.height ,
              width: MediaQuery.of(context).size.width,
             color: Colors.black.withOpacity(0.9),

              child: Obx(()=>Column(
                children: [

                  SizedBox(height: 40,),
                  Container(
                   // color: Colors.red,
                    height: 50,
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:16.0),
                        child: Row(
                          children: [

                            Image.asset("assets/whatsapp/wh.png",height: 35,width: 35,),
                            SizedBox(width: 8,),
                            Text("What's App",style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),),
                             
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right:16.0),
                        child: Icon(Iconsax.search_normal,color: Colors.white,),
                      ),
                  
                  ],)
                  ,),

                 navController.ISOPEN.value ?IsOpen(): IsClosed(),
                 
  ],
              )),
    );
  }
Widget addbtn(){
  return Container(
    height: 200,
    width: 120,
    
    decoration:  BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(12)),
     // color: Colors.red,
      border: Border.all(color: Colors.grey,width: 2)
  ),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
  children: [
             DottedBorder(
         // strokeCap: StrokeCap.butt,
          dashPattern : const <double>[10, 7],
          strokeWidth: 2,
          color: Colors.grey,
  borderType: BorderType.RRect,
  radius: Radius.circular(90),
 // padding: EdgeInsets.all(8),
  child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 30,
        child: Center(
                          child: Icon(Iconsax.add,
            color:Colors.white,  size: 33,),
                        ),
  ),
),
SizedBox(height: 13,),
    Column(
      children: [
 Text("Create",style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,)),
  SizedBox(height: 7,),
                        Text("Your Story",style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,))
      ],
    ),
  ],
  ),
  
  );
}
  Widget addButton(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          DottedBorder(
           // strokeCap: StrokeCap.butt,
            dashPattern : const <double>[10, 7],
            strokeWidth: 2,
            color: Colors.grey,
  borderType: BorderType.RRect,
  radius: Radius.circular(90),
 // padding: EdgeInsets.all(8),
  child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 30,
          child: Center(
                            child: Icon(Iconsax.add,
              color:Colors.white,  size: 33,),
                          ),
  ),
),
  SizedBox(height: 7,),
                          Text("add",style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,))
        ],
      ),
    );
  }

Widget IsClosed(){
  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      addbtn(),
                      SizedBox(width: 9,),
                  StoryExpended(name: "Ernet Terry", 
                  img: "assets/whatsapp/P7.jpg",
                  storyimg:"assets/whatsapp/S2.jpg"),

                     StoryExpended(name: "Katie Waters", 
                  img: "assets/whatsapp/P6.jpg",
                  storyimg:"assets/whatsapp/S3.jpg"),

                     StoryExpended(name: "Heisenberg", 
                  img: "assets/whatsapp/P8.jpg",
                  storyimg:"assets/whatsapp/S4.jpg"),

              
                    ]),);
}
  Widget IsOpen (){
return  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
addButton(),
Storywidget(name: "Peter", img: "assets/whatsapp/p1.jpg"),
Storywidget(name: "Amanda", img: "assets/whatsapp/P2.jpg"),
Storywidget(name: "Ashley", img: "assets/whatsapp/P3.jpg"),
Storywidget(name: "Jonas", img: "assets/whatsapp/P4.jpg"),
Storywidget(name: "Konan", img: "assets/whatsapp/P6.jpg"),
Storywidget(name: "Bod", img: "assets/whatsapp/P7.jpg"),
                  ],),);
  }
}

/*
 

*/