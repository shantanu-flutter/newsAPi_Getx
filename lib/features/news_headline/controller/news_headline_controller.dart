import 'package:get/get.dart';
import 'package:news_getx/Model/articles.dart';
import 'package:news_getx/Repository/news_repo.dart';
import 'package:news_getx/Repository/news_repo_service_impl.dart';

class NewsHeadlineController extends GetxController{
  RxList<Articles>? articlesList;
  RxBool isLoading = false.obs;
  late NewsRepo _newsRepo;
  NewsHeadlineController(){
    _newsRepo = Get.find<NewsRepoServiceImpl>();
    loadNewsHeadline();
  }

  showLoading(){
    isLoading.toggle();
  }

  offLoading(){
    isLoading.toggle();
  }

  loadNewsHeadline ()async{
    showLoading();
    List<Articles> result = await _newsRepo.getNewsList();
    offLoading();
    if(result!=null){
      articlesList = result.obs;
    }else{
      print("No Data receaved");
    }
  }

}