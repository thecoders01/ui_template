import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:ui_template/src/Whatsapp_app/controller/controller.dart';
import 'package:ui_template/src/Whatsapp_app/screen/storypage.dart';
import 'package:ui_template/src/Whatsapp_app/widget/chatbotomsheet.dart';
import 'package:ui_template/src/Whatsapp_app/widget/navbar.dart';

class Homepage extends StatefulWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
       navController.contactlist();
  }
  @override
  Widget build(BuildContext context) {

    double panelminheight = Get.height*0.6;
 double panelmaxheight = Get.height*0.7;






    return Scaffold(

      body:Obx(()=> Stack(
        children: [
          SlidingUpPanel(
            
            controller: navController.panelController.value,
           // parallaxEnabled: true,
            //parallaxOffset: .5,
            borderRadius: BorderRadius.vertical(top: Radius.circular(18)),
            maxHeight:panelmaxheight ,
            minHeight: panelminheight,
            body: Storypage(),



            panelBuilder: (controler)=>PanelWidget(
              controler:controler
            ),
          ),

           Align(
        alignment: Alignment.bottomCenter,
        child: navbar())
        ],

        
      )),
    );
  }
}