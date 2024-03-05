import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/articles_model.dart';
import 'package:news_app_ui_setup/widgets/news_item.dart';

class NewsItemListView extends StatelessWidget {
  const NewsItemListView({super.key, required this.articles});

 final List<ArticleModel> articles ;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: NewsItem(
              articleModel: articles[index],
            ),
          );
        },
      ),
    );
  }
}