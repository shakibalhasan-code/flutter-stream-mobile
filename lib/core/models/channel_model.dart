class ChannelModel {
  final String name;
  final String url;
  final String category;
  final String image;
  final String? id;

  ChannelModel(
      {required this.name,
      required this.url,
      required this.category,
      required this.image,
      this.id});

  factory ChannelModel.fromJson(String id, Map<String, dynamic> json) {
    return ChannelModel(
        name: json['categoryName'] as String,
        url: json['link'] as String,
        category: json['category'] as String,
        image: json['categoryImage'] as String,
        id: id);
  }
}
