class Destination {
  final int id;
  final String city;
  final String country;
  final String assetPath;
  final String originCity;
  final int minimumPrice;
  final int minimumPriceLow;
  final String persianPrice;
  final String persianPriceLow;

  const Destination({
    required this.id,
    required this.city,
    required this.country,
    required this.assetPath,
    required this.minimumPrice,
    required this.minimumPriceLow,
    required this.originCity,
    required this.persianPrice,
    required this.persianPriceLow
  });
}
