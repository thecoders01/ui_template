import 'package:flutter/material.dart';

class Popular_widget extends StatelessWidget {
  final String img;

  const Popular_widget({Key? key,
  required this.img,  
 
  }) : super(key: key);
 
 

  @override
  Widget build(BuildContext context) {
    return  Container(
          height: 120,
          width: 180,
           decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), 
                    color: Colors.black38,
                   image: DecorationImage(
          image: AssetImage(img),
          fit: BoxFit.cover,
        ),
                    
                    ),

                   // child: Image.asset(img, ),
        );
  }
}