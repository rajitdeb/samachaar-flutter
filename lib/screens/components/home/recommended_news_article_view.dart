import 'package:flutter/material.dart';

class RecommendedNewsArticleView extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String author;
  final String authorAvatarUrl;
  final String publishedTime;

  const RecommendedNewsArticleView({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.author,
    required this.authorAvatarUrl,
    required this.publishedTime,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              children: [
                // Article Image
                Container(
                  width: 120.0,
                  height: 120.0,
                  decoration: BoxDecoration(
                    // color: Theme.of(context).colorScheme.background,
                    image: DecorationImage(
                      image: NetworkImage(imageUrl),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Author Avatar & Name
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 12.0,
                              backgroundImage: NetworkImage(authorAvatarUrl),
                              // backgroundColor:
                              //     Theme.of(context).colorScheme.primary,
                            ),
                            const SizedBox(width: 6.0),
                            Text(
                              author,
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                          ],
                        ),
                        const SizedBox(height: 10.0),

                        // Headlines
                        Text(
                          title,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                        const SizedBox(height: 10.0),

                        // Published Time
                        Text(
                          publishedTime,
                          style: Theme.of(context).textTheme.labelSmall,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
