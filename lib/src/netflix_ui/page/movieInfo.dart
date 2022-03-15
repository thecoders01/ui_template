import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ui_template/src/netflix_ui/widget/instruction_dialog.dart';

class MovieInfo extends StatelessWidget {
  const MovieInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   Container(
            color:Colors.black.withOpacity(0.9),
            child: Column(
              children: [
                 Expanded(child: Container(
                   width: MediaQuery.of(context).size.width,
                  
                 
                 child: Image.asset("assets/movie/squidgamecover.jpg", fit: BoxFit.cover),
                 )),
                 Expanded(child: Container( decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), 
                //color: Colors.black.withOpacity(0.9),
 
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:18.0,top: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                           BouncingWidget(
                              onPressed: (){
       Instruction_dialog( context);
      },
                            child: CircleAvatar(maxRadius: 35,
                            backgroundColor: Colors.orangeAccent,
                            child: Center(child: Icon(Iconsax.play_circle5,
                            color: Colors.white,size: 30,),),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(
                                    child: Row(
                                      children: [
                                       
                                        Text('2.324.542', style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.white
                                        ),),
                                        SizedBox(width: 5),
                                         Icon(Icons.star, color: Colors.orangeAccent, size: 20,),
                                         SizedBox(width: 5),
                                         Icon(Icons.star, color: Colors.orangeAccent, size: 20,),
                                         SizedBox(width: 5),
                                         Icon(Icons.star, color: Colors.orangeAccent, size: 20,),
                                         SizedBox(width: 5),
                                         Icon(Icons.star, color: Colors.orangeAccent, size: 20,),
                                         SizedBox(width: 5),
                                         Icon(Icons.star, color: Colors.orangeAccent, size: 20,),
                                        
                                      ],
                                    ),
                                  ),
                     ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("The Plot", style: 
                                TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0, 
                                  fontWeight: FontWeight.bold
                                ),
                              ),
          ],
        ),
      ),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Text("Four Hundred and fifty six people, all of whom are struggling financially in life , are invited to play a mysterious survival competition.Compete in a series of traditional's children's games but with deadly twists.",style: TextStyle(color: Colors.white,fontSize: 15),),
       ),
                               
      Padding(
        padding: const EdgeInsets.only(left:8.0),
        child: Row(
                                children: [
                                  Text("Director :",style: TextStyle(color: Colors.orangeAccent,fontSize: 15,),),
                                SizedBox(width: 3,),
                                Text("Hwang Dong-hyuk",style: TextStyle(color: Colors.white,fontSize: 15),),
                                ],
                              ),
      ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text("Writers :",style: TextStyle(color: Colors.orangeAccent,fontSize: 15,),),
                                SizedBox(width: 3,),
                                Text("Hwang Dong-hyuk",style: TextStyle(color: Colors.white,fontSize: 15),),
                                ],
                              ),
                            ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                children: [
                                  Text("Drama,",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                                SizedBox(width: 3,),
                             Text("Funny Story,",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                                SizedBox(width: 3,),
                             Text("Horror Fiction",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                                
                                ],
                            ),
                              ),

                  ],
                ),
                
                )),
              ],
            ),
          ),
    );
  }
}