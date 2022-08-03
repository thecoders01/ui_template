import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';


class NetflixNavigationController extends GetxController {
  static NetflixNavigationController instance = Get.find();
  

  var selectedTab = 0.obs;

   CarouselController carouselController = new CarouselController();
  var current = 0.obs;
 var isliked = false.obs;
var liked =[false,true,false,false,false,true,false].obs;
  List<dynamic> movies = [
    {
      'title': 'Black Widow',
      'image': 'assets/netflix/allusdead.jpeg',
      'mark': '3.0',
      'isgood':true,
      'quality':"Popular",
      'isliked':false,
    },
    {
      'title': 'The Suicide Squad',
      'image': 'assets/netflix/ghoul.jpeg',
      'mark': '5.0',
      'isgood':false,
      'quality':"",
      'isliked':false,
    },
    {
      'title': 'Godzilla Vs Kong',
      'image': 'assets/netflix/lupin.jpeg',
      'mark': '4.5',
      'isgood':false,
      'quality':"",
      'isliked':false,
    },
     {
      'title': 'The Bridgerton',
      'image': 'assets/netflix/strangerthingsaffiche.jpeg',
      'mark': '4.5',
      'isgood':true,
      'quality':"New Movie",
      'isliked':false,
    },
     {
      'title': 'Avengers',
      'image': 'assets/netflix/moneyheist.webp',
      'mark': '5.0',
      'isgood':false,
      'quality':"",
      'isliked':false,
    },
     {
      'title': 'Outside the Wire',
      'image': 'assets/netflix/quenngambit.jpeg',
      'mark': '4.5',
      'isgood':false,
      'quality':"",
      'isliked':false,
    },
     {
      'title': 'Squid game',
      'image': 'assets/netflix/shabone.jpeg',
      'mark': '4.5',
      'isgood':false,
      'quality':"",
      'isliked':false,
    },
    
  ];
  }