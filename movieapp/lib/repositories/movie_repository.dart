import 'package:movieapp/models/movies_model.dart';

abstract class MovieRepository {
  //principios do solid criando interfaces
  Future<Movies> getMovies();
}
