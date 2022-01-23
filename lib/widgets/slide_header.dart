import 'package:flutter/material.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';

class SlideHeader extends StatefulWidget {
  @override
  State<SlideHeader> createState() => _SlideHeaderState();
}

class _SlideHeaderState extends State<SlideHeader> {
  @override
  Widget build(BuildContext context) {
    final List<String> imageUrl = [
      'https://static1.telewebion.com/web/content_images/promotion_images/large/mb_23325615dfffb1280e8d4ec9486b7042.jpg',
      'https://static1.telewebion.com/web/content_images/promotion_images/large/mb_09434cfdd042c970147d7f01339fb80b.jpg',
      'https://static1.telewebion.com/web/content_images/promotion_images/large/mb_476d9cf7ad2c21c097c7272e0acfc962.jpg',
      'https://static1.telewebion.com/web/content_images/promotion_images/large/mb_64782004a614800c94d4d4e9843aff34.jpg',
      'https://static1.telewebion.com/web/content_images/promotion_images/large/mb_b6edc1cd1f36e45daf6d7824d7bb2283.jpg'
    ];
    return GFCarousel(
        passiveIndicator: Colors.black26,
        activeIndicator:Colors.red ,
        pagination: true,
        autoPlay: true,
        enlargeMainPage: true,
        items: imageUrl.map((url) {
          return InkWell(
            onTap: () => {},
            child: Container(
              margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Image.network(
                  url,
                  fit: BoxFit.cover,
                  width: 500,
                  height: 80,
                ),
              ),
            ),
          );
        }).toList(),
        onPageChanged: (index) {
          setState(() {
            index;
          });
        });
  }
}
