

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:ui_template/src/netflix_ui/widget/custom_dialog.dart';


Instruction_dialog(BuildContext context){
       showGeneralDialog(
  barrierDismissible: false,
  context: context,
  barrierColor: Colors.black54, // space around dialog
  transitionDuration: Duration(milliseconds: 500),
  transitionBuilder: (context, a1, a2, child) {
    return ScaleTransition(
      scale: CurvedAnimation(
          parent: a1,
          curve: Curves.elasticOut,
          reverseCurve: Curves.easeOutCubic),
      child: CustomDialog( // our custom dialog
        title: "Something went wrong!",
        backcolor: Colors.orangeAccent,
        icondata: LineIcons.exclamationTriangle,
        content:Column(children: [

instruction("You don't have an account"),
instruction("Go on the website "),


        ],),
           
        positiveBtnText: "Understood",
        negativeBtnText: "Cancel",
        positiveBtnPressed: () {
               
               
          // Do something here
          Navigator.of(context).pop();
        },
      ),
    );
  },
  pageBuilder: (BuildContext context, Animation animation,
      Animation secondaryAnimation) {
    return Container();
  },
);
}

Widget instruction(String instruction){
  return  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
    maxRadius: 5,
               backgroundColor: Colors.orangeAccent,
             
              ),
              SizedBox(width: 3,),
                            Text(instruction, style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                            ),),
                          ],
                        ),
  );
}