import 'package:flutter/material.dart';

class Category_widget extends StatelessWidget {
   final String img;
  final String name;
  const Category_widget({Key? key,
  required this.img,  
   required this.name, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
         height: 90,
         width: 70,
        child: Column(
          children: [
            Container(
 height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13), 
                      color: Colors.black38,
                     
                      
                      ),

                      child: Center(
                        child: Image.asset(img, height: 30,width: 30,),
                      ),
            ),
            SizedBox(height: 4,),
            Text(name,style: TextStyle(color: Colors.white,fontSize: 15),),
                                     
          ],
        ),
      ),
    );
  }
}