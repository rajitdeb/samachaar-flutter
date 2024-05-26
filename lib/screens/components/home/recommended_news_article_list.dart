import 'package:flutter/material.dart';
import '/model/recommended_news_article.dart';
import '/screens/components/home/recommended_news_article_view.dart';
import '/util/app_constants.dart';

class RecommendedNewsArticleList extends StatelessWidget {
  const RecommendedNewsArticleList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemCount: recommendedArticles.length,
      itemBuilder: (context, index) {
        RecommendedNewsArticle currentArticle = recommendedArticles[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: RecommendedNewsArticleView(
            title: currentArticle.title,
            imageUrl: currentArticle.imageUrl,
            author: currentArticle.author,
            authorAvatarUrl: currentArticle.authorAvatarUrl,
            publishedTime: currentArticle.publishedTime,
          ),
        );
      },
    );
  }
}

/*
* Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: RecommendedNewsArticleView(
            title: recommendedArticles[0].title,
            imageUrl: recommendedArticles[0].imageUrl,
            author: recommendedArticles[0].author,
            authorAvatarUrl: recommendedArticles[0].authorAvatarUrl,
            publishedTime: recommendedArticles[0].publishedTime,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: RecommendedNewsArticleView(
            title: recommendedArticles[1].title,
            imageUrl: recommendedArticles[1].imageUrl,
            author: recommendedArticles[1].author,
            authorAvatarUrl: recommendedArticles[1].authorAvatarUrl,
            publishedTime: recommendedArticles[1].publishedTime,
          ),
        )
      ],
    )
*
*
* */
