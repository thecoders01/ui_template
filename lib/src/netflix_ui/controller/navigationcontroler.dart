import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';


class NavigationController extends GetxController {
  static NavigationController instance = Get.find();
  

  var selectedTab = 0.obs;

   CarouselController carouselController = new CarouselController();
  var current = 0.obs;

  List<dynamic> movies = [
    {
      'title': 'Black Widow',
      'image': 'assets/Blackwidow2.jpeg',
      'mark': '3.0',
      'isgood':true,
      'quality':"Popular"
    },
    {
      'title': 'The Suicide Squad',
      'image': 'assets/Suicide_Squad_The.webp',
      'mark': '5.0',
      'isgood':false,
      'quality':""
    },
    {
      'title': 'Godzilla Vs Kong',
      'image': 'assets/godzilla.jpeg',
      'mark': '4.5',
      'isgood':false,
      'quality':""
    },
     {
      'title': 'The Bridgerton',
      'image': 'assets/bridgertoncover.jpeg',
      'mark': '4.5',
      'isgood':true,
      'quality':"New Movie"
    },
     {
      'title': 'Avengers',
      'image': 'assets/avengers.webp',
      'mark': '5.0',
      'isgood':false,
      'quality':""
    },
     {
      'title': 'Zone hostile',
      'image': 'assets/zonehostile.jpg',
      'mark': '4.5',
      'isgood':false,
      'quality':""
    },
     {
      'title': 'Squid game',
      'image': 'assets/sg_main_img.jpeg',
      'mark': '4.5',
      'isgood':false,
      'quality':""
    },
    
  ];
  }