class HoverImageCardEntity {
  bool? isHover;
  final String title;
  final String date;
  final String price;
  final String imageUrl;
  final String? typeFlight;
  final String? offPrice;
  HoverImageCardEntity({
    required this.title,
    required this.date,
    required this.price,
    required this.imageUrl,
    this.typeFlight,
    this.offPrice,
    this.isHover = false,
  });
}