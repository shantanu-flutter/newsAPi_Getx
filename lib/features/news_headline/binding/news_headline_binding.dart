import 'package:get/get.dart';
import 'package:news_getx/Repository/news_repo_service_impl.dart';
import 'package:news_getx/features/news_headline/controller/news_headline_controller.dart';

class NewsHeadlineBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(NewsRepoServiceImpl());
    Get.put(NewsHeadlineController());
  }

}