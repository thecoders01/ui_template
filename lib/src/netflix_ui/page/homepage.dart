import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ui_template/src/netflix_ui/widget/carousel_widget.dart';
import 'package:ui_template/src/netflix_ui/widget/category_widget.dart';
import 'package:ui_template/src/netflix_ui/widget/navbar.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), 
            color: Colors.black.withOpacity(0.9),
            
    
            
            
            ),

            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 50,),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("Hello",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),
                              SizedBox(width: 3,),
                              Text("Adrian!",style: TextStyle(color: Colors.white,fontSize: 17),),
                              ],
                            ),
                            SizedBox(height: 7,),
                            Text("Watch your favorite movie"
                            ,style: TextStyle(color: Colors.white54,fontSize: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 5,),
                  searchbar(),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only(left:15.0,right: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                          Text("Category",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),
                     
                     Row(
                       children: [
                         Text("See all",style: TextStyle(color: Colors.orangeAccent,fontSize: 16,fontWeight: FontWeight.bold),),
                         SizedBox(width: 7,),
                         Icon(Iconsax.arrow_right,
        color:Colors.orangeAccent,
        size: 17,
        
        ), 
                       ],
                     )
                     
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Category_widget(img: "assets/love.png",name: "Romance",),
                          Category_widget(img: "assets/emoji.png",name: "Comedy",),
                           Category_widget(img: "assets/cool.png",name: "Action",),
                            Category_widget(img: "assets/scared.png",name: "Horor",),
                      ],
                    ),
                  ),
                 
                     Padding(
                       padding: const EdgeInsets.only(left:15.0,right: 15.0),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Row(
                                    children: [
                                      Text("Feature",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),
                                    SizedBox(width: 3,),
                                    Text("Movie",style: TextStyle(color: Colors.white,fontSize: 17),),
                                    ],
                                  ),
                         ],
                       ),
                     ),
                      SizedBox(height: 25,),
                     Carousel_widget(),
                      SizedBox(height: 85,),

            ],),),
    );
  }
}