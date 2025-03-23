class ProductModel {
  String title;
  String subtitle;
  String image;
  bool isFavorite;

  ProductModel({
    required this.title,
    required this.subtitle,
    required this.image,
    this.isFavorite = false,
  });
}