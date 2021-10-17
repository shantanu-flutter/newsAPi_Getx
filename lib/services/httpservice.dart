import 'package:dio/dio.dart';

abstract class HttpService{

  void init();

  Future<Response> getNews(String url);

}