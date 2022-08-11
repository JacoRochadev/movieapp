import 'package:dio/dio.dart';
import 'package:movieapp/service/dio_service.dart';

class DioServiceImp implements DioService {
  @override
  Dio getDio() {
    return Dio(
      BaseOptions(
        baseUrl: 'https://api.themoviedb.org/3/',
        headers: {
          'Content-Type': 'application/json; charset=utf-8',
          'authorization': 'Bearer 5b0a0c5f28b81009ed6225b6a567b497',
        },
      ),
    );
  }
}
