import 'package:movieapp/models/movies_model.dart';
import 'package:movieapp/repositories/movie_repository.dart';
import 'package:movieapp/service/dio_service.dart';
import 'package:movieapp/utils/apis.utils.dart';

class MovieRepositoryImp implements MovieRepository {
  final DioService _dioService;
  MovieRepositoryImp(this._dioService);

  @override
  Future<Movies> getMovies() async {
    var result = await _dioService.getDio().get(API.REQUEST_MOVIE_LIST);
    return Movies.fromJson(result.data);
  }
}
