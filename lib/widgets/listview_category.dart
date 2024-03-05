import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_model.dart';
import 'package:news_app_ui_setup/widgets/category_card.dart';

const List<CategoryModel> Categories = [
  CategoryModel(image: 'assets/business.jpg', categoryName: 'Business'),
  CategoryModel(
      image: 'assets/entertaiment.jpeg', categoryName: 'Entertaiment'),
  CategoryModel(image: 'assets/general.jpg', categoryName: 'General'),
  CategoryModel(image: 'assets/health.jpeg', categoryName: 'Health'),
  CategoryModel(image: 'assets/science.jpeg', categoryName: 'Science'),
  CategoryModel(image: 'assets/sports.jpg', categoryName: 'Sports'),
  CategoryModel(image: 'assets/technology.jpeg', categoryName: 'Technology'),
];

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: Categories[index],
            );
          }),
    );
  }
}
