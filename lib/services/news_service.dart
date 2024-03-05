import 'package:dio/dio.dart';
import 'package:news_app_ui_setup/models/articles_model.dart';

class NewsService {
  final Dio dio;
  NewsService(
    this.dio,
  );

  getNews() async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=946cfcd987744baf8b5b03658f82a42d');

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articleList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
            title: article['title'],
            subtitle: article['description'],
            image: article['urlToImage']);
        articleList.add(articleModel);
      }
      return articleList;
    } catch (e) {
      return [];
    }
  }
}
