import 'package:flutter/material.dart';
import 'package:get/get.dart';

getDrawer() =>   Drawer(
      child:  Column(
        children:  [
          ListTile(
            title: const Text("News Headline"),
            onTap: (){
              Get.toNamed("/news_headlines");
            },
          ),
          ListTile(
            title: const Text("Search News"),
            onTap: (){
              Get.toNamed("/news_search");
            },
          )
        ],
      ),
    );
