import 'package:flutter/material.dart';
import 'package:my_project/Movie%20App/Model/movie_mode.dart';
import 'package:my_project/Movie%20App/Screen/movie_detail_screen.dart';

class MovieList extends StatefulWidget {
  const MovieList({super.key});

  @override
  State<MovieList> createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  int selectedColor = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(115, 36, 35, 35),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black87,
        title: const Text(
          "Movie App UI",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          // For movies Genre
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                moviesGenre("All", 0),
                moviesGenre("Action", 1),
                moviesGenre("LoveStory", 2),
                moviesGenre("Comedy", 3),
                moviesGenre("Drama", 4),
              ],
            ),
          ),
          // For Recent movies
          const Padding(
            padding: EdgeInsets.only(top: 8, left: 15),
            child: Text(
              "Recent Movies",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 21,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              height: 245,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listOfMovie.length,
                  itemBuilder: (context, index) {
                    Movie movie = listOfMovie[index];
                    return displayMovieList(movie);
                  }),
            ),
          ),

          // For Trending movies
          const Padding(
            padding: EdgeInsets.only(top: 8, left: 15),
            child: Text(
              "Trending Movies",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 21,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 5),
            child: SizedBox(
              height: 245,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: trendingMovie.length,
                  itemBuilder: (context, index) {
                    Movie movie = trendingMovie[index];
                    return displayMovieList(movie);
                  }),
            ),
          )
        ],
      ),
    );
  }

  GestureDetector displayMovieList(Movie movie) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MovieDetailScreen(
                movie: movie,
              ),
            ));
      },
      child: Column(
        children: [
          Card(
            elevation: 10.0,
            child: Image.network(
              movie.imageUrl,
              fit: BoxFit.cover,
              height: 185,
              width: 140,
            ),
          ),
          Text(
            movie.name,
            style: const TextStyle(
              fontSize: 17,
              color: Colors.white,
            ),
          ),
          Row(
            children: [
              const Icon(
                Icons.star,
                size: 15,
                color: Colors.amber,
              ),
              const SizedBox(
                width: 2,
              ),
              Text(
                movie.rating,
                style: const TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Padding moviesGenre(name, index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedColor = index;
          });
        },
        child: Chip(
          label: Text(
            name,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
          backgroundColor:
              selectedColor == index ? Colors.pink : Colors.black54,
        ),
      ),
    );
  }
}
