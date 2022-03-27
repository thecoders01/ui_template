import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:ui_template/src/Whatsapp_app/controller/controller.dart';
import 'package:ui_template/src/Whatsapp_app/widget/feed_widget.dart';

class PanelWidget extends StatelessWidget {
  final ScrollController controler;

  const PanelWidget({Key? key, required this.controler}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     
       decoration: BoxDecoration( color: Colors.black.withOpacity(0.9),
       borderRadius: BorderRadius.only(
                topRight: Radius.circular(18), topLeft: Radius.circular(18)),
      
              
              ),
      child: ListView(
        
        controller: controler,
        padding: EdgeInsets.zero,
        children: navController.contactsl,
      ),
    );
  }

  
}

class panelBar extends StatelessWidget {
  const panelBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.transparent,
       borderRadius: BorderRadius.only(
                topRight: Radius.circular(18), topLeft: Radius.circular(18)),
      
              
              ),
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap:(){
                    navController.panelController.value.isPanelOpen ?
                    navController.panelController.value.close():
                    navController.panelController.value.open();

                    print( navController.panelController.value.isPanelOpen);
                  } ,
                  child: Container(
                    //margin: EdgeInsets.all(15),
                    height: 6,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 8.0, bottom: 2.0, left: 18, right: 18),
            child: Container(
              //margin: EdgeInsets.all(15),
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.2),
                  borderRadius: BorderRadius.circular(30)),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  item('Chats', 0),
                  SizedBox(
                    width: 35,
                  ),
                  item('Group', 1),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget item(String content, selectedvalue) {
    return Obx(() => Padding(
          padding:
              const EdgeInsets.only(left: 2.0, right: 2.0, top: 4, bottom: 4),
          child: BouncingWidget(
            onPressed: () {
              navController.selectedTab.value = selectedvalue;
            },
            child: Container(
              //margin: EdgeInsets.all(15),
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                  color: (navController.selectedTab.value == selectedvalue)
                      ? Colors.grey
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: Text(
                  content,
                  style: TextStyle(
                      color: (navController.selectedTab.value == selectedvalue)
                          ? Colors.white
                          : Colors.grey,
                      fontWeight:
                          (navController.selectedTab.value == selectedvalue)
                              ? FontWeight.bold
                              : FontWeight.normal),
                ),
              ),
            ),
          ),
        ));
  }
}
