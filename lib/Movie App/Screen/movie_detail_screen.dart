import 'package:flutter/material.dart';
import 'package:my_project/Movie%20App/Model/movie_mode.dart';

class MovieDetailScreen extends StatelessWidget {
  final Movie movie;
  const MovieDetailScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                // For Image
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40)),
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40)),
                    child: Image.network(
                      movie.imageUrl,
                      fit: BoxFit.fill,
                      height: h / 1.5,
                      width: w,
                    ),
                  ),
                ),
                // For back button
                Padding(
                  padding: const EdgeInsets.only(top: 28, left: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Positioned(
                        child: Icon(
                      Icons.arrow_back_rounded,
                      size: 25,
                      color: Colors.red,
                    )),
                  ),
                )
              ],
            ),
            // For Released date
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Released Date:${movie.year.toString()}",
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
              ),
            ),
            // For Descriotion
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                movie.description,
                style: const TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
