import 'package:samachaar_flutter/model/article.dart';

class TrendingNewsArticle extends Article {
  final String trendingAt;

  TrendingNewsArticle({
    required super.title,
    required super.description,
    required super.imageUrl,
    required super.author,
    required super.authorAvatarUrl,
    required super.publishedTime,
    required this.trendingAt,
  });
}
