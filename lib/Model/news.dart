

import 'package:news_getx/Model/articles.dart';

/// status : "ok"
/// totalResults : 6845
/// articles : [{"author":"Simon Little","title":"Video shows Tesla driver who appears asleep at the wheel on B.C. bridge at rush hour | Globalnews.ca","description":"\"From what I saw they were out like a light, but then there was a couple moments where it looked like they almost woke up, then went back to sleep,\" a witness told Global News.","url":"https://globalnews.ca/news/8270749/video-tesla-driver-asleep-at-the-wheel-bc-bridge-rush-hour/","urlToImage":"https://globalnews.ca/wp-content/uploads/2021/10/JPEG-SLEEPING-TESLA-JORDAN.jpg?quality=85&strip=all&w=720&h=379&crop=1","publishedAt":"2021-10-16T02:01:16Z","content":"A B.C. Tesla driver has been ticketed for driving without due care and attention, following a video posted to social media appearing to show them asleep at the wheel with the car in autopilot mode.\r\n… [+3559 chars]"}]

class News {
  News({
       String? status,
      int? totalResults,
      List<Articles>? articles,}){
    _status = status??"";
    _totalResults = totalResults??0;
    _articles = articles??[];
}

   News.fromJson(dynamic json){
    _status = json['status'];
    _totalResults = json['totalResults'];
    if (json['articles'] != null) {
      _articles = [];
      json['articles'].forEach((v) {
        _articles.add(Articles.fromJson(v));
      });
    }
  }
  late String _status;
  late int _totalResults;
  late List<Articles> _articles;

  String get status => _status;
  int get totalResults => _totalResults;
  List<Articles> get articles => _articles;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['totalResults'] = _totalResults;
    if (_articles != null) {
      map['articles'] = _articles.map((v) => v.toJson()).toList();
    }
    return map;
  }

}
