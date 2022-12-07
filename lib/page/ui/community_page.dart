import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:society_management/controller/community_controller.dart';

import '../../model/post_json.dart';
import '../widget/all_widget.dart';
import '../widget/post_item.dart';


class CommunityPage extends GetView<CommunityController> {
  const CommunityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget('Community Page'),
      body:           SingleChildScrollView(
        child: Column(
          children: List.generate(posts.length, (index){
            return PostItem(
              postImg: posts[index]['postImg'],
              profileImg: posts[index]['profileImg'],
              name: posts[index]['name'],
              caption: posts[index]['caption'],
              isLoved: posts[index]['isLoved'],
              viewCount: posts[index]['commentCount'],
              likedBy: posts[index]['likedBy'],
              dayAgo: posts[index]['timeAgo'],
            );
          }),
        ),
      ),
    );
  }
}
