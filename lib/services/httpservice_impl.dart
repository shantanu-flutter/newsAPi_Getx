
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_getx/services/httpservice.dart';

const apiKey = "006a8cf9418b4343aa3602d2009e7d5b";
const baseUrl = "https://newsapi.org/";


class HttpsServiceImpl implements HttpService{

  late Dio _dio;

  @override
  Future<Response> getNews(String url) async {
    // TODO: implement get
    late Response res;
    try{
      res= await _dio.get(url);
    }on DioError catch (e) {
      debugPrint(e.message);
        throw Exception(e);
    }

    return res;
  }

  void initializeInterceptors(){

    _dio.interceptors.add(InterceptorsWrapper(
        onRequest:(options, handler){
          debugPrint( "${options.method} | ${options.baseUrl +options.uri.path}");
          // Do something before request is sent
          return handler.next(options); //continue
          // If you want to resolve the request with some custom data，
          // you can resolve a `Response` object eg: return `dio.resolve(response)`.
          // If you want to reject the request with a error message,
          // you can reject a `DioError` object eg: return `dio.reject(dioError)`
        },
        onResponse:(response,handler) {
          // Do something with response data
          debugPrint( "${response.statusCode} | ${response.data}");
          return handler.next(response); // continue
          // If you want to reject the request with a error message,
          // you can reject a `DioError` object eg: return `dio.reject(dioError)`
        },
        onError: (DioError e, handler) {
          debugPrint( e.message);
          // Do something with response error
          return  handler.next(e);//continue
          // If you want to resolve the request with some custom data，
          // you can resolve a `Response` object eg: return `dio.resolve(response)`.
        }
    ));


    }

  //Initializing it is necessary
  //if not initialzed will throw null Eception

  @override
  void init() {
    _dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        headers: {"Authorization": "Bearer $apiKey"}
      )
    );
    initializeInterceptors();
    // TODO: implement init
  }

}