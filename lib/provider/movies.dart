import 'package:flutter/cupertino.dart';
import 'package:televibion_app/provider/movie.dart';

class Movies with ChangeNotifier {
  List<Movie> _tvItems = [
    Movie(
        title: 'جلسه ی حساس بازجویی!',
        imageUrl:
            'https://static2.telewebion.com/web/content_images/program_episode_images/thumbs/2022-01-22/480_35089d3081ba4506ccaabab9ed734a57.jpg',
        program: 'کلیپ سریال بعد از آزادی',
        views: 10000000,
        duration: 2),
    Movie(
        title: 'چه باجناق باهوشی داشت!',
        imageUrl:
            'https://static2.telewebion.com/web/content_images/program_episode_images/thumbs/2022-01-22/480_10f2e1dee4b9ad700f1146d628b2194b.jpg',
        program: 'زوجی نو',
        views: 1997,
        duration: 2),
    Movie(
        title: 'گلایه ی فراستی از حراج تهران!',
        imageUrl:
            'https://static2.telewebion.com/web/content_images/program_episode_images/thumbs/2022-01-22/480_3be87cfb87fa0d31b03cc08b0a02b94f.jpg',
        program: 'اخبار 20:30',
        views: 2176,
        duration: 6),
    Movie(
        title: 'برنامه دیدار مداحان ...!',
        imageUrl:
            'https://static3.telewebion.com/web/content_images/program_episode_images/thumbs/2022-01-22/480_9186eca36788c3bab5dac75d58e89c35.jpg',
        program: 'روایت هیئت',
        views: 1230,
        duration: 4),
    Movie(
        title: 'حدسشون درست بود',
        imageUrl:
            'https://static2.telewebion.com/web/content_images/program_episode_images/thumbs/2022-01-22/480_7201f0e9c777f72b2405d8401f040f2f.jpg',
        program: 'کلیپ سریال برف بی صدا می بارد',
        views: 5726,
        duration: 3),
    Movie(
        title: 'پیش بازی اتلتیکومادرید - والنسیا',
        imageUrl:
            'https://static2.telewebion.com/web/content_images/program_episode_images/thumbs/2022-01-22/480_c5de1399c462d4c395a85c034f3bdf9c.jpg',
        program: 'لذت فوتبال',
        views: 56,
        duration: 5),
  ];

  List<Movie> get tvItems {
    return [..._tvItems];
  }

  List<Movie> _movieItems = [
    Movie(
        title: 'کابوس',
        imageUrl:
            'https://static1.telewebion.com/web/content_images/program_images/background_images/thumbs/2021-11-21/220_ffd124c22802cc9ec6b6040decec5f62.png',
        program: '',
        views: 36037,
        duration: 108),
    Movie(
        title: 'مریم مقدس',
        imageUrl:
            'https://static1.telewebion.com/web/content_images/program_images/background_images/thumbs/2021-09-22/220_16ecd261ac5088aee91078bf5225abd9.png',
        program: '',
        views: 165749,
        duration: 113),
    Movie(
        title: 'عطر گل نرگس',
        imageUrl:'https://static1.telewebion.com/web/content_images/program_images/background_images/thumbs/2022-01-09/220_f0030ee5fe23f434266e0378d1dcc3af.png',
        program: '',
        views: 2614,
        duration: 68),
    Movie(
        title: 'امیرکبیر',
        imageUrl:'https://static1.telewebion.com/web/content_images/program_images/background_images/thumbs/2022-01-10/220_16e064167ef793f58aed5ba0d1f1629c.png',
        program: '',
        views: 38677,
        duration: 109),
    Movie(
        title: 'راز خانه بهجت',
        imageUrl:
            'https://static1.telewebion.com/web/content_images/program_images/background_images/thumbs/2021-06-01/220_c099e468717d7f2501b9538dd6bdf97b.png',
        program: '',
        views: 142857,
        duration: 87),
    Movie(
        title: 'چای سرد',
        imageUrl:'https://static1.telewebion.com/web/content_images/program_images/background_images/thumbs/2021-03-05/220_01c536e431c4f99277130978b38461bf.png',
        program: '',
        views:62822,
        duration: 86),
    Movie(
        title: 'پرستار',
        imageUrl:
            'https://static1.telewebion.com/web/content_images/program_images/background_images/thumbs/2020-12-26/220_c89b5884687b685381f10c700062f70d.png',
        program: '',
        views:54124 ,
        duration:96 ),
    Movie(
        title: 'مزرعه آبی',
        imageUrl:'https://static1.telewebion.com/web/content_images/program_images/background_images/thumbs/2021-01-27/220_8818556ce6ba4bc9302dca9ec1979591.png',
        program: '',
        views: 67679,
        duration:89),
  ];

  List<Movie> get movieItems {
    return [..._movieItems];
    
  }
  String durationToString(int minutes) {
    var d = Duration(minutes:minutes);
    List<String> parts = d.toString().split(':');
    return '${parts[0].padLeft(2, '0')}:${parts[1].padLeft(2, '0')}';
}
}
