import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';


class NavigationController extends GetxController {
  static NavigationController instance = Get.find();
  

  var selectedTab = 0.obs;

   CarouselController carouselController = new CarouselController();
  var current = 0.obs;
 var isliked = false.obs;
var liked =[false,true,false,false,false,true,false].obs;
  List<dynamic> movies = [
    {
      'title': 'Black Widow',
      'image': 'assets/movie/Blackwidow2.jpeg',
      'mark': '3.0',
      'isgood':true,
      'quality':"Popular",
      'isliked':false,
    },
    {
      'title': 'The Suicide Squad',
      'image': 'assets/movie/Suicide_Squad_The.webp',
      'mark': '5.0',
      'isgood':false,
      'quality':"",
      'isliked':false,
    },
    {
      'title': 'Godzilla Vs Kong',
      'image': 'assets/movie/godzilla.jpeg',
      'mark': '4.5',
      'isgood':false,
      'quality':"",
      'isliked':false,
    },
     {
      'title': 'The Bridgerton',
      'image': 'assets/movie/bridgertoncover.jpeg',
      'mark': '4.5',
      'isgood':true,
      'quality':"New Movie",
      'isliked':false,
    },
     {
      'title': 'Avengers',
      'image': 'assets/movie/avengers.webp',
      'mark': '5.0',
      'isgood':false,
      'quality':"",
      'isliked':false,
    },
     {
      'title': 'Outside the Wire',
      'image': 'assets/movie/zonehostile.jpg',
      'mark': '4.5',
      'isgood':false,
      'quality':"",
      'isliked':false,
    },
     {
      'title': 'Squid game',
      'image': 'assets/movie/sg_main_img.jpeg',
      'mark': '4.5',
      'isgood':false,
      'quality':"",
      'isliked':false,
    },
    
  ];
  }