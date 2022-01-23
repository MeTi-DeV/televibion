import 'package:flutter/cupertino.dart';

class Movie with ChangeNotifier {
  final String title;
  final String imageUrl;
  final String program;
  final int views;
  final int duration;
  bool favorite=false;

  Movie(
      {required this.title,
      required this.imageUrl,
      required this.program,
      required this.views,
      required this.duration});

void      favoriteToggle(){
        this.favorite=!this.favorite;
        notifyListeners();
      }
}

// 