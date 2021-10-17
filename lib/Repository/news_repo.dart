


import 'package:news_getx/Model/articles.dart';

abstract class NewsRepo{

  Future<List<Articles>> getNewsList();

  Future<List<Articles>> getNewsFromKeyword(String keyword);

}