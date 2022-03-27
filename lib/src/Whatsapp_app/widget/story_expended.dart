import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:story_view/story_view.dart';


class StoryExpended extends StatelessWidget {
   final String name;
   final String img;
    final String storyimg;
  const StoryExpended({Key? key
  , required this.name,
  required this.img,
   required this.storyimg
  }) : super(key: key);

 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:8.0,right: 8.0),
      child: ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      child:   GestureDetector(
               onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MoreStories()));
                
               },
        child: Container(
          height: 200,
          width: 120,
          
          decoration:  BoxDecoration(
        image: DecorationImage(
            image: AssetImage(storyimg),
            fit: BoxFit.cover),
        ),
          child: Stack(children: [
      
      Align(
        alignment: Alignment.bottomLeft,
        child: Container(
        color: Colors.transparent,
        height: 90,
        width: 100,
      
        child: Padding(
          padding: const EdgeInsets.only(top:8.0,bottom: 4,left: 15),
          child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                 Container(
        height: 45,
            width: 45,
            decoration: BoxDecoration(
                        
                          gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      stops: [
                        0.1,
                        0.4,
                        0.6,
                        0.9,
                      ],
                      colors: [
                        Colors.green,
                        Colors.teal,
                        Colors.indigo,
                        Colors.teal,
                      ],
                    ),
                         shape: BoxShape.circle,
                       ),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: CircleAvatar(
                            radius: 38,
                                backgroundColor: Colors.black,
                            child: Padding(
                              padding: const EdgeInsets.all(3.8),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 30,
                                backgroundImage: AssetImage(img),
                               
                              ),
                            ),
                          ),
                        ),
                      ),
                       SizedBox(height: 7,),
                              Text(name,style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,))
            ],
          ),
        ),
        ),
      )
          ],),
        ),
      ),
  ),
    );
  }
}

class MoreStories extends StatefulWidget {
  @override
  _MoreStoriesState createState() => _MoreStoriesState();
}

class _MoreStoriesState extends State<MoreStories> {
  final storyController = StoryController();

  @override
  void dispose() {
    storyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String img1 = "https://images.unsplash.com/photo-1552053831-71594a27632d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1562&q=80";
    return Scaffold(
      
      body: StoryView(
        storyItems: [
          StoryItem.text(
            title: "I guess you'd love to see more of our food. That's great.",
            backgroundColor: Colors.blue,
          ),
          StoryItem.text(
            title: "Nice!\n\nTap to continue.",
            backgroundColor: Colors.red,
            textStyle: TextStyle(
              fontFamily: 'Dancing',
              fontSize: 40,
            ),
          ),
           StoryItem.text(
            title: "Get Started",
            backgroundColor: Colors.pink,
            textStyle: TextStyle(
              fontFamily: 'Dancing',
              fontSize: 40,
            ),
          ),
         
        ],
        onStoryShow: (s) {
          print("Showing a story");
        },
        onComplete: () {
          print("Completed a cycle");
          Get.back();
        },
        progressPosition: ProgressPosition.top,
        repeat: false,
        controller: storyController,
      ),
    );
  }
}