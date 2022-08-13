import 'package:flutter/material.dart';
import 'package:movieapp/models/movies_model.dart';
import 'package:movieapp/repositories/movie_repository.dart';

class MovieController {
  final MovieRepository _moviesRepository;
  MovieController(this._moviesRepository) {
    fetch();
  }

  late ValueNotifier<Movies?> movies;

  fetch() async {
    movies.value = await _moviesRepository.getMovies();
  }
}
