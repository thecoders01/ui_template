import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ui_template/src/netflix_ui/controller/controller.dart';

class navbar extends StatelessWidget {
  const navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx (()=>Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
 height: MediaQuery.of(context).size.height * 0.08,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), 
            color: Colors.black38,
            /*
            gradient: LinearGradient(
                                  colors: [
                                    Colors.white.withOpacity(0.2),
                                    Colors.white.withOpacity(0.05),
                                    Colors.white.withOpacity(0.2),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight),
            */
            
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Items(Iconsax.home_15,0),
                SizedBox(width:40),
                Items(Iconsax.play_circle5,1),
                SizedBox(width:40),
                Items(Iconsax.bookmark_24,2),
                SizedBox(width:40),
                Items(Iconsax.user4,3),
              ],
            ), 

      ),
    ));
  }

  Widget Items(IconData icon , int selectedvalue){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BouncingWidget(
        
        child: Icon(icon,
        color:(navigationController.selectedTab.value==selectedvalue) ?Colors.white:Colors.grey,
        size: (navigationController.selectedTab.value==selectedvalue) ?35:30,
        
        ), 


      onPressed: (){
        navigationController.selectedTab.value=selectedvalue;
      }
      
      ),
    );
  }
}

Widget searchbar(){

  return Padding(
    padding: const EdgeInsets.all(18.0),
    child: Container(
 height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13), 
              color: Colors.black38,
            
              
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                        Text("Search",style: TextStyle(color: Colors.white54,fontSize: 16),),
                        SizedBox(width: 230,),
                        Icon(Iconsax.search_normal,
        color:Colors.white54,
        size: 20,
        
        ), 
                ],
              ),
              ),
              
  );
}