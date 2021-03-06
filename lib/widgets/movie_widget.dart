import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:televibion_app/provider/movie.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:persian_tools/persian_tools.dart';
import 'package:televibion_app/provider/movies.dart';

class Moviewidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MovieData = Provider.of<Movie>(context);
    final MoviesData = Provider.of<Movies>(context);
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      margin: EdgeInsets.all(5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: Colors.transparent,
          // color: Colors.amber,
          child: GridTile(
            child: GestureDetector(
              onTap: () {},
              child: Column(
                
                children: [
                  Stack(children: [
                    Image.network(
                      MovieData.imageUrl,
                      fit: BoxFit.cover,
                      height: 140,
                      width: 270,
                    ),
                    Positioned(
                        right: 0,
                        bottom: 0,
                        child: FittedBox(
                          child: Container(
                            height: 30,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(128, 128, 128, 0.8),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10))),
                            child: Text(
                              MoviesData.durationToString(MovieData.duration)
                                      .toString()
                                      .toPersianDigit() +
                                  ' \''+' ',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )),
                    Positioned(
                      left: 0,
                      bottom: 0,
                      child: FittedBox(
                        child: Container(
                          height: 30,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(128, 128, 128, 0.8),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Row(
                              children: [
                                Container(
                                  child: Icon(
                                    Icons.remove_red_eye,
                                    size: 17,
                                    color: Colors.white,
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    ' ' +
                                        MovieData.views
                                            .toString()
                                            .addComma
                                            .toPersianDigit() +
                                        ' ',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ]),
                  Container(
                    width: 250,
                    child: Column(
                      
                      children: [
                        Text(
                          
                          MovieData.title,
                          style: TextStyle(fontSize: 14 ,fontWeight: FontWeight.w600),
                          textDirection: TextDirection.rtl,
                        ),
                        Text(
                          
                          MovieData.program,
                          textDirection: TextDirection.rtl,
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
