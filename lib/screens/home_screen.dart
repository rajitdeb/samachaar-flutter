import 'package:flutter/material.dart';
import '/screens/components/home/recommended_news_article_list.dart';
import '/screens/components/home/trending_news_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "Samachaar",
          style: Theme.of(context)
              .textTheme
              .headlineLarge
              ?.copyWith(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              // Hottest News
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hottest News",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Text(
                      "See All",
                      style: Theme.of(context).textTheme.labelSmall,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
              const TrendingNewsList(),

              // Recommended News
              const SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "News For You",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Text(
                      "See All",
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
              const RecommendedNewsArticleList(),
            ],
          )
        ],
      ),
    );
  }
}
