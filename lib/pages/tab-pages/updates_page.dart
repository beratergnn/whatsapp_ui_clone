import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp_ui_clone/components/updates_my_story.dart';
import 'package:whatsapp_ui_clone/components/updates_title_icon.dart';

import 'package:whatsapp_ui_clone/constant/colors.dart';
import 'package:whatsapp_ui_clone/models/updates_followed_channel_model.dart';
import 'package:whatsapp_ui_clone/models/updates_story_model.dart';
import 'package:whatsapp_ui_clone/pages/tab-pages/list-components/comp_update_followed_channel_list.dart';
import 'package:whatsapp_ui_clone/pages/tab-pages/list-components/comp_update_story_list.dart';

class UpdatesPage extends StatelessWidget {
  List<UpdateStoryModel> getStoryList = [];
  List<UpdateFollowedChannelModel> getFollowedChannelList = [];

  Future<List<UpdateStoryModel>> uploadStories() async {
    getStoryList = UpdateStoryModel.getStories();
    return getStoryList;
  }

  Future<List<UpdateFollowedChannelModel>> uploadFollowedChannel() async {
    getFollowedChannelList = UpdateFollowedChannelModel.getFollowedChannel();
    return getFollowedChannelList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: wpScaffoldBackGroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTitleAndIcon(
                iconPath: 'ic_more.svg',
                title: 'Durum',
                onTap: () {},
              ),
            ),
            const SizedBox(height: 20),
            // * Story
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: FutureBuilder(
                future: uploadStories(),
                builder: ((context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return Text('Veri alinamadi: ${snapshot.error}');
                  } else if (snapshot.hasData) {
                    var storiesList = snapshot.data;
                    return Container(
                      width: 400,
                      height: 110,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: storiesList!.length + 1,
                        itemBuilder: (context, index) {
                          if (index == 0) {
                            return Row(
                              children: [
                                CustomMyStory(
                                  imagePath: 'profile_photo.jpg',
                                  text: 'Durumum',
                                  addTap: () {},
                                ),
                                SizedBox(width: 20),
                              ],
                            );
                          } else {
                            var story = storiesList[index - 1];
                            return CustomStoryList(
                              onTap: () {},
                              model: story,
                            );
                          }
                        },
                      ),
                    );
                  } else {
                    return Text('Unexpected Situation');
                  }
                }),
              ),
            ),
            const SizedBox(height: 10),
            Divider(
              color: wpTextColor2,
              thickness: 0.5,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTitleAndIcon(
                iconPath: 'ic_plus.svg',
                title: 'Kanallar',
                onTap: () {},
              ),
            ),
            const SizedBox(height: 20),
            // * Followed Channel
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: FutureBuilder(
                future: uploadFollowedChannel(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return Text('Veri alinamadi: ${snapshot.error}');
                  } else if (snapshot.hasData) {
                    var followedChannelList = snapshot.data;
                    return Container(
                      height: 380,
                      width: double.maxFinite,
                      child: ListView.builder(
                        itemCount: followedChannelList!.length,
                        itemBuilder: (context, index) {
                          var followedChannel = followedChannelList[index];

                          return CustomFollowedChannelList(
                            onTap: () {},
                            model: followedChannel,
                          );
                        },
                      ),
                    );
                  } else {
                    return Text('Unexpected Situation');
                  }
                },
              ),
            ),
            const SizedBox(height: 200),
          ],
        ),
      ),
    );
  }
}
