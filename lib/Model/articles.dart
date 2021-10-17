/// author : "Ramish Zafar"
/// title : "Elon Musk Rings The Warning Bells For Lucid Group & Rivian"
/// description : "Palo Alto, California-based electric vehicle manufacturer Tesla Inc's chief executive officer Mr. Elon Musk has expressed confusion at the soaring valuations of new entrants into the space. Tesla, the first American company to manufacture and sell electric ve…"
/// url : "https://wccftech.com/elon-musk-rings-the-warning-bells-for-lucid-group-rivian/"
/// urlToImage : "https://cdn.wccftech.com/wp-content/uploads/2021/10/TESLA-RIVIAN-LUCID-VALUATION-AT-IPO-DELIVERIES-1030x439.jpeg"
/// publishedAt : "2021-10-16T09:45:48Z"

class Articles {
  Articles({
      String? author, 
      String? title, 
      String? description, 
      String? url, 
      String? urlToImage, 
      String? publishedAt,}){
    _author = author;
    _title = title;
    _description = description;
    _url = url;
    _urlToImage = urlToImage??"";
    _publishedAt = publishedAt;
}

  Articles.fromJson(dynamic json) {
    _author = json['author'];
    _title = json['title'];
    _description = json['description'];
    _url = json['url'];
    _urlToImage = json['urlToImage']??"";
    _publishedAt = json['publishedAt'];
  }
  String? _author;
  String? _title;
  String? _description;
  String? _url;
  late String _urlToImage;
  String? _publishedAt;

  String? get author => _author;
  String? get title => _title;
  String? get description => _description;
  String? get url => _url;
  String get urlToImage => _urlToImage??"";
  String? get publishedAt => _publishedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['author'] = _author;
    map['title'] = _title;
    map['description'] = _description;
    map['url'] = _url;
    map['urlToImage'] = _urlToImage;
    map['publishedAt'] = _publishedAt;
    return map;
  }

}