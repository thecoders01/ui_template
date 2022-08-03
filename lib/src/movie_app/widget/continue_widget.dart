import 'package:cupertino_progress_bar/cupertino_progress_bar.dart';
import 'package:flutter/material.dart';

class Continue_watching extends StatelessWidget {
  final String img;
  final String name;
  final double progress;
  const Continue_watching({Key? key,
  required this.img,  
   required this.name, 
    required this.progress,
  }) : super(key: key);
 

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
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
        ),
        
         Padding(
           padding: const EdgeInsets.only(top:8.0),
           child: Text(name,style: TextStyle(fontSize: 15,color: Colors.white),),
         ),
    
    Padding(
      padding: const EdgeInsets.only(top:8.0),
      child: SizedBox(
        width: 180,
        child: CupertinoProgressBar(
value: progress,
valueColor: Colors.red,
        ),
      ),
    ),
      ],
    );
  }
}