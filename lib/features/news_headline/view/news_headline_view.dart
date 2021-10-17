
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_getx/features/news_headline/controller/news_headline_controller.dart';
import 'package:news_getx/widgets/drawer.dart';

class NewsHeadlineView extends StatelessWidget {


  final controller = Get.find<NewsHeadlineController>();

   NewsHeadlineView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("News Headline"),

      ),
      drawer: getDrawer(),
      body: Obx((){
        return controller.isLoading==true?Center(child: CircularProgressIndicator()):
            Container(
              child: ListView.separated(
                  itemBuilder: (BuildContext context, int index)=>Container(
                    child: Column(
                      children: [
                        if (controller.articlesList?[index].urlToImage!=null)
                          Image.network(controller.articlesList?[index].urlToImage??"")

                        else new SizedBox()
                      ],
                    ),
                  ),
                  separatorBuilder: (_,__)=>Divider(),
                  itemCount: controller.articlesList?.length??0),
            );
      }),
    );
  }
}
