class NewsCategory {
  final String title;
  final String image;

  const NewsCategory({required this.image, required this.title});

  static final List<NewsCategory> categories= [
    const NewsCategory(image: 'assets/images/sports.avif', title: 'Sports'),
    const NewsCategory(image: 'assets/images/entertainment.avif', title: 'Entertainment'),
    const NewsCategory(image: 'assets/images/health.avif', title: 'Health'),
    const NewsCategory(image: 'assets/images/science.avif', title: 'Science'),
    const NewsCategory(image: 'assets/images/technology.jpeg', title: 'Technology'),
  ];
}