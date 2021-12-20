import 'package:flutter/material.dart';
import 'package:movieapp/widget/ViewAllToprated.dart';
import 'package:movieapp/widget/viewAllHorizontal.dart';

import '../model/movie.dart';

import '../widget/horizontal_list_item.dart';

class ViewTopRated extends StatelessWidget {
  static const routeName = '/ViewTopRated';

  const ViewTopRated({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movies App'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Recommended',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    child: Text(''),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              height: 1000,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: topRatedMovieList.length,
                itemBuilder: (ctx, i) => ViewAllToprated(i),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
