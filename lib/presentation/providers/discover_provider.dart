import 'package:flutter/material.dart';
import 'package:flutter_tiktok_practice/domain/entities/video_post.dart';
import 'package:flutter_tiktok_practice/infraestructure/models/local_video_model.dart';
import 'package:flutter_tiktok_practice/shared/data/local_video_post.dart';

class DiscoverProvider extends ChangeNotifier{

  // TODOs Repository, DataSource

  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {

    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts.map( ( video ) => LocalVideoModel.fromJson(video).toVideoPostEntity() ).toList();
    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }

}