import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';



class bottombar extends StatelessWidget {
  const bottombar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 80,
        width: double.infinity,
         decoration: BoxDecoration(
            color: Colors.black,
        
            ),
 child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Items(Iconsax.home5,11,Colors.white),
                SizedBox(width:50),
                Items(Iconsax.search_normal,1,Colors.grey),
                   SizedBox(width:50),
                Items(FontAwesomeIcons.list,3,Colors.grey),
                  SizedBox(width:50),
                Items(Iconsax.user,2,Colors.grey),
            
              ],
            ), 
    );
  }
 Widget Items(IconData icon , int selectedvalue,color){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BouncingWidget(
        
        child: FaIcon(
          icon,
        color:color,
        size: 28,
        
        ), 


      onPressed: (){
        
      }
      
      ),
    );
  }

}