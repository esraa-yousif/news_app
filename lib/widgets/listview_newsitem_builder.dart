import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/articles_model.dart';
import 'package:news_app_ui_setup/services/news_service.dart';
import 'package:news_app_ui_setup/widgets/listview_newsitem.dart';

class NewsItemBuilderListView extends StatefulWidget {
  const NewsItemBuilderListView({super.key});

  @override
  State<NewsItemBuilderListView> createState() =>
      _NewsItemBuilderListViewState();
}

class _NewsItemBuilderListViewState extends State<NewsItemBuilderListView> {
  var future;

  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getNews();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          return NewsItemListView(articles: snapshot.data!);
        });
  }
}