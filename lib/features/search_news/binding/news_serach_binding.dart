import 'package:get/get.dart';
import 'package:news_getx/features/search_news/controller/news_search_controller.dart';

class NewsSearchBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(NewsSearchController());
  }

}