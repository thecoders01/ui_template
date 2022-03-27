import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:ui_template/src/Whatsapp_app/widget/chatbotomsheet.dart';
import 'package:ui_template/src/Whatsapp_app/widget/feed_widget.dart';


class NavController extends GetxController {
  static NavController instance = Get.find();
  var panelController  =PanelController().obs;

  var selectedTab = 0.obs;
    var ISOPEN = false.obs;
  List<Widget> contactsl =[panelBar()];
   contactlist(){
     
   contacts.forEach((element) {

     contactsl.add(feedwidget(name: element['name'], 
      msg: element['msg'], 
      nbrmsg: element['nbrmsg'],
      img: element['image'], 
      hour: element['hour'], 
      isSeen: element['isSeen'],
      hasStory: element['hasStory'],));
     });
     return contactsl;

    
  }
  List<dynamic> contacts = [
 {
      'name': 'Ash',
      'image': 'assets/whatsapp/p1.jpg',
      'msg': 'Hi How are you?',
      'nbrmsg':"2",
      'hour':"09:11",
      'isSeen':false,
      'hasStory':true,
    },
     {
      'name': 'Amanda',
      'image': 'assets/whatsapp/P2.jpg',
      'msg': 'The unseen of spending three',
      'nbrmsg':"2",
      'hour':"09:11",
      'isSeen':false,
      'hasStory':false,
    },
     {
      'name': 'Coralie',
      'image': 'assets/whatsapp/P3.jpg',
      'msg': 'Hello bro',
      'nbrmsg':"4",
      'hour':"09:11",
      'isSeen':false,
      'hasStory':true,
    },
     {
      'name': 'Emilio',
      'image': 'assets/whatsapp/P4.jpg',
      'msg': 'The unseen of spending three ',
      'nbrmsg':"1",
      'hour':"09:11",
      'isSeen':true,
      'hasStory':false,
    },
     {
      'name': 'Sarah',
      'image': 'assets/whatsapp/P5.jpg',
      'msg': 'Hi How are you?',
      'nbrmsg':"2",
      'hour':"09:11",
      'isSeen':true,
      'hasStory':false,
    },
     {
      'name': 'Anaïs',
      'image': 'assets/whatsapp/P6.jpg',
      'msg': 'Hi How are you?',
      'nbrmsg':"2",
      'hour':"09:11",
      'isSeen':true,
      'hasStory':false,
    },
     {
      'name': 'Peter',
      'image': 'assets/whatsapp/P7.jpg',
      'msg': 'Hi How are you?',
      'nbrmsg':"2",
      'hour':"09:11",
     'isSeen':true,
      'hasStory':false,
    },
     {
      'name': 'George',
      'image': 'assets/whatsapp/P8.jpg',
      'msg': 'Hi How are you?',
      'nbrmsg':"2",
      'hour':"09:11",
      'isSeen':true,
      'hasStory':false,
    },
     {
      'name': 'Ash',
      'image': 'assets/whatsapp/P9.jpg',
      'msg': 'Hi How are you?',
      'nbrmsg':"2",
      'hour':"09:11",
      'isSeen':false,
      'hasStory':true,
    },
     {
      'name': 'Ash',
      'image': 'assets/whatsapp/P15.jpg',
      'msg': 'Hi How are you?',
      'nbrmsg':"2",
      'hour':"09:11",
      'isSeen':false,
      'hasStory':true,
    },
     {
      'name': 'Ash',
      'image': 'assets/whatsapp/P10.jpg',
      'msg': 'Hi How are you?',
      'nbrmsg':"2",
      'hour':"09:11",
      'isSeen':false,
      'hasStory':true,
    },
     {
      'name': 'Ash',
      'image': 'assets/whatsapp/P11.jpg',
      'msg': 'Hi How are you?',
      'nbrmsg':"2",
      'hour':"09:11",
      'isSeen':false,
      'hasStory':true,
    },
     {
      'name': 'Ash',
      'image': 'assets/whatsapp/P12.jpg',
      'msg': 'Hi How are you?',
      'nbrmsg':"2",
      'hour':"09:11",
      'isSeen':false,
      'hasStory':true,
    },





  ];
  
  
  
  }