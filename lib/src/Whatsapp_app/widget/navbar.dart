import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ui_template/src/Whatsapp_app/controller/controller.dart';
import 'package:ui_template/src/Whatsapp_app/widget/chatbotomsheet.dart';
import 'package:ui_template/src/netflix_ui/controller/controller.dart';

class navbar extends StatelessWidget {
  const navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      height: MediaQuery.of(context).size.height * 0.15,
        width: double.infinity,
         decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.9),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(35), topLeft: Radius.circular(35)),
           /*
 boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(.9),
                  offset: Offset(3, 2),
                  blurRadius: 7)
            ]
           */
            
            ),
 child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Items(Iconsax.home5,1,Colors.greenAccent),
                SizedBox(width:20),
                Items(Iconsax.call,1,Colors.grey),
                SizedBox(width:40),
                BouncingWidget(
                   onPressed: (){
                     navController.panelController.value.isPanelOpen ?
                    navController.panelController.value.close():
                    navController.panelController.value.open();

                    if(navController.ISOPEN.value){
 navController.ISOPEN.value =false;
         print( navController.panelController.value.isPanelOpen);
      }else{
navController.ISOPEN.value =true;
                    }
                    }
                   ,
                  child:  Container(
                    
	height: 70,
      width: 70,
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
                    child: Center(
                      child: Icon(Iconsax.add,
        color:Colors.white,  size: 33,),
                    ),
      
        
        ),
                ),
                SizedBox(width:40),
                Items(Iconsax.picture_frame,2,Colors.grey),
                SizedBox(width:20),
                Items(Iconsax.user4,3,Colors.grey),
              ],
            ), 
    );
  }


  Widget Items(IconData icon , int selectedvalue,color){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BouncingWidget(
        
        child: Icon(icon,
        color:color,
        size: 33,
        
        ), 


      onPressed: (){
        
      }
      
      ),
    );
  }
}