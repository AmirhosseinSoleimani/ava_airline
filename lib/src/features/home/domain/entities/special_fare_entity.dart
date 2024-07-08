class HoverImageCardEntity {
  bool? isHover;
  final String title;
  final String date;
  final String price;
  final String imageUrl;
  HoverImageCardEntity({
    required this.title,
    required this.date,
    required this.price,
    required this.imageUrl,
    this.isHover = false,
  });
}