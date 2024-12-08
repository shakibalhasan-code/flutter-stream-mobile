class CategoryModel {
  final String name;
  final String image;

  CategoryModel({
    required this.name,
    required this.image,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      name: json['categoryName'] as String,
      image: json['categoryImage'] as String,
    );
  }
}
