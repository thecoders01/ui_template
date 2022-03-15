import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ui_template/src/netflix_ui/controller/controller.dart';

Widget fav_button(index){
  return  Obx(()=>Icon_widget(icon:navigationController.liked[index]? Iconsax.heart5:Iconsax.heart,
      press: (){
        if(navigationController.liked[index]==true){
navigationController.liked[index]=false;
        }else{
navigationController.liked[index]=true;
        }
        
      
      },
      color:navigationController.liked[index]?Colors.red:Colors.white
      ));
}

// ignore: camel_case_types
class Icon_widget extends StatelessWidget {
  const Icon_widget(
      {Key? key,
      required this.icon,
      required this.color,
      required this.press})
      : super(key: key);
  final IconData icon;
  final Color color;

  final Function press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child:   BouncingWidget(
  duration: Duration(milliseconds: 100),
  scaleFactor: 1.5,
  onPressed: () {
     press();
    print("onPressed");
  },
        
        child: Container(
         
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.black38,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: Colors.grey,width: 1.5),
          ),
          child: Center(
            child: Icon(icon,color: color,size: 20,)
          ),
        ),
      ),
    );
  }
}