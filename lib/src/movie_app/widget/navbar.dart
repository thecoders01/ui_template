import 'package:flutter/material.dart';

class Netflix_Navbar extends StatelessWidget {

  const Netflix_Navbar({Key? key,
 
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.black,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: [
          SizedBox(width: 10,),
Image.asset("assets/netflix/logonetflixtrasparent.png", height: 30,width: 30,),
SizedBox(width: 20,),
nvbarwidget ("Tv Shows"),
nvbarwidget ("Movies"),
nvbarwidget ("Categories"),


        ]),
      ),
    );
  }

  Widget nvbarwidget (name){
    return Padding(
      padding: const EdgeInsets.only(left:5.0,right: 5.0),
      child: Container(
height: 40,
width: 105,
  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25), 
                        border:Border.all(
                          color: Colors.white,
        width: 0.8, 
      ),
                        color: Colors.black38,
                       
                        
                        ),

                        child: Center(child: Text(name,style: TextStyle(color: Colors.white,fontSize: 15),),),
),
    );
  }
}