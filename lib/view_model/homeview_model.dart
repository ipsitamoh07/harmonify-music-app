import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController {
    final txtSearch = TextEditingController().obs; 

    final hostRecommendedArr = [
        {
            "image": "assets/images/img_1.png",
            "name": "Sound of Sky",
            "artist": "Dilon Bruce"
        },
        {
            "image": "assets/images/img_2.png",
            "name": "Girl on Fire",
            "artist": "Alecia Keys"
        }
    ].obs;

    final playListArr = [
        {
            "image": "assets/images/img_3.png",
            "name": "Classic Playlist",
            "artist": "Piano Guys"
        },
        {
            "image": "assets/images/img_4.png",
            "name": "Summer Playlist",
            "artist": "Dilon Bruce"
        },
        {
            "image": "assets/images/img_5.png",
            "name": "Pop Music",
            "artist": "Michael Jackson"
        }
    ];

    final recentlyPlayedArr = [
        {
            "rate": 4,
            "name": "Billie Jean",
            "artist": "Michael Jackson"
        },
        {
            "rate": 4,
            "name": "Earth Song",
            "artist": "Michael Jackson"
        },
        {
            "rate": 4,
            "name": "Mirror",
            "artist": "Justin Timberlake"
        },
        {
            "rate": 4,
            "name": "Remember the Time",
            "artist": "Michael Jackson"
        }
    ].obs;
}

//.navigationViewStyle(StackNavigationViewStyle())
