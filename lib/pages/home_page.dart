import 'package:flutter/material.dart';

import 'package:semana10_movie_app/models/movie_discover_model.dart';
import 'package:semana10_movie_app/services/api_service.dart';
import 'package:semana10_movie_app/ui/widgets/item_movie_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<MovieDiscoverModel> movies = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getMovies();
  }

  getMovies() async {
    movies = await ApiService().getMovies();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff191928),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome, Fiorella",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Discover",
                            style: TextStyle(
                              height: 1.25,
                              color: Colors.white,
                              fontSize: 38,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color(0xff50E3BA),
                          width: 3,
                        ),
                      ),
                      child: const CircleAvatar(
                        radius: 26,
                        backgroundColor: Colors.white12,
                        backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/762020/pexels-photo-762020.jpeg?auto=compress&cs=tinysrgb&w=600',
                        ),
                      ),
                    ),
                  ],
                ),
                //Categorys

                //List movies
                const SizedBox(height: 20),
                ListView.builder(
                  itemBuilder: (context, index) {
                    return ItemMovieWidget(
                      movie: movies[index],
                    );
                  },
                  shrinkWrap: true,
                  itemCount: movies.length,
                  physics: const ScrollPhysics(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
