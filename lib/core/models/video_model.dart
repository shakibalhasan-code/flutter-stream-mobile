class VideoModel {
  final String title;
  final String image;
  final String category;
  final String id;
  final String videoUrl;

  VideoModel(
      {required this.title,
      required this.image,
      required this.category,
      required this.id,
      required this.videoUrl});

  // Factory method to create a VideoModel instance from JSON
  factory VideoModel.fromJson(String id, Map<String, dynamic> json) {
    return VideoModel(
        title: json['title'] as String,
        image: json['imageUrl'] as String,
        category: json['category'] as String,
        id: id,
        videoUrl: json['videoUrl'] as String);
  }
}
