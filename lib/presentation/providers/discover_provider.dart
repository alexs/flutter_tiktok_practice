import 'package:flutter/material.dart';
import 'package:flutter_tiktok_practice/domain/entities/video_post.dart';

class DiscoverProvider extends ChangeNotifier{

  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    //todo load videos
    notifyListeners();
  }

}