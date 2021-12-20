import 'package:flutter/material.dart';

import '../model/movie.dart';
import '../screens/movie_details_screen.dart';

class ViewAllBest extends StatelessWidget {
  final int index;
  ViewAllBest(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 160,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(
            MovieDetailsScreen.routeName,
            arguments: {
              'id': bestMovieList[index].id,
              'title': bestMovieList[index].title,
              'imageUrl': bestMovieList[index].imageUrl,
              'description': bestMovieList[index].description,
              'rating': bestMovieList[index].rating,
              'year': bestMovieList[index].year,
              'duration': bestMovieList[index].duration,
            },
          );
        },
        child: Column(
          children: <Widget>[
            Card(
              elevation: 10,
              child: Hero(
                tag: bestMovieList[index].id,
                child: Container(
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(bestMovieList[index].imageUrl),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              bestMovieList[index].title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
