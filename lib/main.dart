import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_getx/features/news_headline/binding/news_headline_binding.dart';
import 'package:news_getx/features/news_headline/view/news_headline_view.dart';
import 'package:news_getx/features/search_news/binding/news_serach_binding.dart';
import 'package:news_getx/features/search_news/view/news_search_view.dart';


void main() {
  runApp(
      GetMaterialApp(
        title: 'Flutter Demo',
        getPages: [
          GetPage(name: "/news_headlines", page: ()=> NewsHeadlineView(), binding: NewsHeadlineBinding()  ),
          GetPage(name: "/news_search", page: ()=>NewsSerachView() , binding: NewsSearchBinding() )
        ],
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
         initialRoute: "/news_headlines",
      )


  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(name: "/news_headlines", page: ()=> NewsHeadlineView(), binding: NewsHeadlineBinding()  ),
        GetPage(name: "/news_search", page: ()=>NewsSerachView() , binding: NewsSearchBinding() )
      ],
      // initialRoute: "/news_headlines",
      home: NewsHeadlineView(),

    );
  }
}

