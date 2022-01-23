import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:televibion_app/provider/movies.dart';
import 'package:televibion_app/widgets/movie_widget.dart';
import 'package:televibion_app/widgets/serial_widget.dart';
import 'package:televibion_app/widgets/slide_header.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MoviesData = Provider.of<Movies>(context);
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          SlideHeader(),
          Divider(),
          Row(
            textDirection: TextDirection.rtl,
            children: [
              Container(
                margin: EdgeInsets.only(right: 12),
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'مدرسه ی تلویزیونی #',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 12),
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('مجموعه سریال های تاریخی #'),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: InkWell(
              onTap: () {},
              child: Container(
                width: double.infinity,
                height: 150,
                child: Image.network(
                  'https://static1.telewebion.com/web/content_images/promotion_images/large/mb_083b65c888b720c920dcaead304c5989.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: TextButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(
                                        color: Colors.purple.shade800,
                                        width: 2)))),
                    onPressed: () {},
                    child: Text(
                      'مشاهده همه',
                      style: TextStyle(color: Colors.purple.shade800),
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    'پیشنهاد تلویبیون',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 220,
            child: Flex(
              direction: Axis.horizontal,
              children: [
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: MoviesData.tvItems.length,
                    itemBuilder: (BuildContext context, int index) =>
                        ChangeNotifierProvider.value(
                      value: MoviesData.tvItems[index],
                      child: Container(
                          child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Moviewidget(),
                      )),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          Container(
            margin: EdgeInsets.only(top: 25),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: TextButton(
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(
                                          color: Colors.red, width: 2)))),
                      onPressed: () {},
                      child: Text(
                        'مشاهده همه',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      'فیلم',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 410,
            child: Flex(
              direction: Axis.horizontal,
              children: [
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: MoviesData.movieItems.length,
                    itemBuilder: (BuildContext context, int index) =>
                        ChangeNotifierProvider.value(
                      value: MoviesData.movieItems[index],
                      child: Container(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Serialwidget(),
                      )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
