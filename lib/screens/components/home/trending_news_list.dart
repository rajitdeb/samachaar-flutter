import 'package:flutter/material.dart';
import 'package:samachaar_flutter/model/trending_news_article.dart';
import 'package:samachaar_flutter/screens/components/home/trending_news_article_view.dart';
import 'package:samachaar_flutter/util/app_constants.dart';

class TrendingNewsList extends StatelessWidget {
  const TrendingNewsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: trendingArticles.length,
          itemBuilder: (context, index) {
            TrendingNewsArticle currentArticle = trendingArticles[index];
            return TrendingNewsArticleView(
              title: currentArticle.title,
              imageUrl: currentArticle.imageUrl,
              author: currentArticle.author,
              authorAvatarUrl: currentArticle.authorAvatarUrl,
              trendingAt: currentArticle.trendingAt,
              publishedTime: currentArticle.publishedTime,
            );
          }),
    );
  }
}
