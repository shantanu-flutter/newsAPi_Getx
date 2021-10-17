import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:dio/dio.dart' as dio;
import 'package:news_getx/Model/News.dart';
import 'package:news_getx/Model/articles.dart';
import 'package:news_getx/Repository/news_repo.dart';
import 'package:news_getx/services/httpservice.dart';
import 'package:news_getx/services/httpservice_impl.dart';

class NewsRepoServiceImpl implements NewsRepo {
  // @override
  // Future<List<Articles>> getNewsFromKeyword(String keyword) {
  //   // TODO: implement getNewsFromKeyword
  //   throw UnimplementedError();
  // }
  //
  // @override
  // Future<List<Articles>> getNewsList() {
  //   // TODO: implement getNewsList
  //   throw UnimplementedError();
  // }

  late HttpService _httpService;

  NewsRepoServiceImpl() {
    _httpService = Get.put(HttpsServiceImpl());
    _httpService.init();
  }

  @override
  Future<List<Articles>> getNewsFromKeyword(String keyword) async {
    try {
      final dio.Response response = await _httpService.getNews(
          "v2/everything?q=$keyword");
      News parsedResponse = News.fromJson(response.data);

      return parsedResponse.articles;
    } on Exception catch (e) {
      debugPrint(e.toString());
      return [];
    }
  }


  @override
  Future<List<Articles>> getNewsList() async {
    // TODO: implement getNewsList
    try {
      final dio.Response response = await _httpService.getNews(
          "v2/top-headlines?country=us");
      final parsedResponse = News.fromJson(response.data);
      return parsedResponse.articles;
    } on Exception catch (e) {
      debugPrint(e.toString());
      return [];
    }
  }
}