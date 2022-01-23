import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:televibion_app/provider/movie.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:persian_tools/persian_tools.dart';
import 'package:televibion_app/provider/movies.dart';
import 'package:decorated_icon/decorated_icon.dart';

class Serialwidget extends StatelessWidget {
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
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      child: Stack(
                        children: [
                          Image.network(
                            MovieData.imageUrl,
                            fit: BoxFit.cover,
                            height: 340,
                            width: 250,
                          ),
                          Positioned(
                              bottom: 0,
                              child: Container(
                                width:300,
                                height: 50,
                                decoration: BoxDecoration(boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(30, 30, 30, 0.8),
                                    spreadRadius:10,
                                    blurRadius: 25,
                                  )
                                ]),
                              )),
                        ],
                      ),
                    ),
                    Positioned(
                        right: 0,
                        bottom: 0,
                        child: FittedBox(
                          child: Container(
                            height: 40,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(255 , 0, 0 , 0.6),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(20))),
                            child: Text(
                              MoviesData.durationToString(MovieData.duration)
                                      .toString()
                                      .toPersianDigit() +
                                  ' \'' +
                                  ' ',
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
                            color: Color.fromRGBO(255 , 0, 0 , 0.6),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(20)),
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
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        
                        child: IconButton(
                          onPressed: () => MovieData.favoriteToggle(),
                          icon: MovieData.favorite
                              ? DecoratedIcon(
                                  Icons.star_rounded,
                                  color: Colors.amberAccent,
                                  size: 31,
                                  shadows: [
                                    BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(3.0, 3.0),
                                        blurRadius: 20)
                                  ],
                                )
                              : DecoratedIcon(
                                  Icons.star_border_rounded,
                                  color: Colors.amberAccent,
                                  size: 31,
                                  shadows: [
                                    BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(3.0, 3.0),
                                        blurRadius: 20)
                                  ],
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
