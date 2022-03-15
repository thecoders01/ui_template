
import 'package:flutter/material.dart';



class CustomDialog extends StatelessWidget {
  final positiveBtnText, negativeBtnText;
  final GestureTapCallback positiveBtnPressed;
  final Widget content;
final Color backcolor;
final IconData icondata;
String? title;
  CustomDialog({
     this.title,
    required this.content,
     required this.backcolor,
      required this.icondata,
    required this.positiveBtnText,
    required this.negativeBtnText,
    required this.positiveBtnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildDialogContent(context),
    );
  }
  Widget _buildDialogContent(BuildContext context) {
  return Stack(
    alignment: Alignment.topCenter,
    children: <Widget>[
      Container( 
        width: MediaQuery.of(context).size.width-60, // Bottom rectangular box
        margin: EdgeInsets.only(top: 40), // to push the box half way below circle
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.only(top: 60, left: 20, right: 20), // spacing inside the box
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              "${title}",
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(
              height: 16,
            ),
             content,
            ButtonBar(
              buttonMinWidth: 100,
              alignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                 
                  child: Text(negativeBtnText,style: TextStyle(
                    color: Colors.orangeAccent,
                  )),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                FlatButton(
                  
                  child: Text(positiveBtnText,style: TextStyle(
                    color: Colors.orangeAccent,
                  ),),
                  onPressed: positiveBtnPressed,
                ),
              ],
            ),
          ],
        ),
      ),
      CircleAvatar( // Top Circle with icon
        maxRadius: 40.0,
        backgroundColor: backcolor,
        child: Icon(icondata,color: Colors.white,size: 35,),
      ),
    ],
  );
}
}