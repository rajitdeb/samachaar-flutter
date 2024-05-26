import 'package:flutter/material.dart';

class TrendingNewsArticleView extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String author;
  final String authorAvatarUrl;
  final String trendingAt;
  final String publishedTime;

  const TrendingNewsArticleView({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.author,
    required this.authorAvatarUrl,
    required this.trendingAt,
    required this.publishedTime,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 10.0),
        Container(
          padding: const EdgeInsets.all(5.0),
          // height: 300.0,
          width: 280.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Theme.of(context).colorScheme.primaryContainer,
          ),
          child: Column(
            children: [
              Container(
                height: 200.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Theme.of(context).colorScheme.background,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(imageUrl),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      trendingAt,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                    Text(
                      publishedTime,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 15.0,
                      backgroundImage: NetworkImage(authorAvatarUrl),
                      // backgroundColor: Theme.of(context).colorScheme.primary,
                    ),
                    const SizedBox(width: 10.0),
                    Text(
                      author,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
            ],
          ),
        ),
      ],
    );
  }
}
