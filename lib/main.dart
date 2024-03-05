import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/pages/home_page.dart';
import 'package:news_app_ui_setup/services/news_service.dart';

void main() {
  NewsService(Dio()).getNews();
  runApp(const NewsApp());
}


class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}