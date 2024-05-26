abstract class Article {
  final String title;
  final String description;
  final String imageUrl;
  final String author;
  final String authorAvatarUrl;
  final String publishedTime;

  Article({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.author,
    required this.authorAvatarUrl,
    required this.publishedTime,
  });
}
