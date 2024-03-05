import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/listview_category.dart';
import 'package:news_app_ui_setup/widgets/listview_newsitem_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('News',
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
            Text('Clouds',
                style: TextStyle(
                    color: Colors.orange, fontWeight: FontWeight.bold)),
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: CategoryListView()),
              SliverToBoxAdapter(
                child: SizedBox(height: 20),
              ),
              NewsItemBuilderListView(),
            ],
          )),
    );
  }
}
