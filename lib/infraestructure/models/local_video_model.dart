import 'package:flutter_tiktok_practice/domain/entities/video_post.dart';

class LocalVideoModal{
  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  LocalVideoModal({
    required this.name,
    required this.videoUrl,
    this.likes = 0,
    this.views = 0,
  });

  factory LocalVideoModal.fromJson(Map<String,dynamic> json) => LocalVideoModal(
    name: json["name"] ?? 'No name', 
    videoUrl: json["videoUrl"], 
    likes: json["likes"] ?? 0, 
    views: json["views"] ?? 0, 
  );

  VideoPost toVideoPostEntity() => VideoPost(
    caption: name, 
    videoUrl: videoUrl, 
    likes: likes, 
    views: views
  );
}