import 'package:flutter/material.dart';
import '../models/movie.dart';

class MovieDetail extends StatelessWidget {
  final Movie movie;
  final String imgPath = 'https://image.tmdb.org/t/p/w500/';

  const MovieDetail(this.movie, {super.key});

  @override
  Widget build(BuildContext context) {
    String path;
    if (movie.posterPath != null) {
      path = imgPath + movie.posterPath!;
    } else {
      path =
          'https://images.freeimages.com/images/large-previews/5eb/movie-clapboard-1184339.jpg';
    }

    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: 200,
                width: 800,
                child: Image.network(
                  'https://media.wbur.org/wp/2020/12/GettyImages-1150049038-1000x630.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                      height: height / 3,
                      child: Image.network(path),
                      decoration: BoxDecoration(color: Colors.redAccent),
                    ),
                    SizedBox(width: 30),
                    Container(
                      child: Text(
                        movie.title,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Divider(color: Colors.redAccent, thickness: 2),
              Text(
                'Sinopsis Film',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                child: Text(movie.overview, style: TextStyle(fontSize: 15)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
