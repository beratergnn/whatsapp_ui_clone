import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/constant/colors.dart';
import 'package:whatsapp_ui_clone/models/updates_followed_channel_model.dart';

class CustomFollowedChannelList extends StatelessWidget {
  const CustomFollowedChannelList({
    super.key,
    required this.model,
    this.onTap,
  });

  final UpdateFollowedChannelModel model;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(model.channelImagePath),
                  ),
                  SizedBox(width: 10),
                  Text(
                    model.channelName,
                    style: TextStyle(
                      color: wpTextColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: model.messageType > 0 ? 240 : 350,
                          child: Text(
                            model.messageType == 0
                                ? model.lastMessage
                                : (model.messageType == 1
                                    ? '📷 ${model.lastMessage}'
                                    : (model.messageType == 2
                                        ? '🎥 ${model.lastMessage}'
                                        : '')),
                            maxLines: 3,
                            textAlign: TextAlign.justify,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: wpTextColor2,
                              fontSize: 15,
                            ),
                          )),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          model.unreadMessage == 0
                              ? Text(
                                  model.dateTime,
                                  style: TextStyle(
                                    color: wpTextColor2,
                                    fontSize: 12,
                                  ),
                                )
                              : Row(
                                  children: [
                                    Text(
                                      '● ${model.unreadMessage} okunmamış',
                                      style: TextStyle(
                                        color: wpTealGreen,
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      model.dateTime,
                                      style: TextStyle(
                                        color: wpTextColor2,
                                        fontSize: 12,
                                      ),
                                    )
                                  ],
                                ),
                        ],
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                  model.messageType > 0
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: ImageFiltered(
                            imageFilter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                            child: Image.asset(
                              model.messageImagePath,
                              height: 80,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      : Container(),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Divider(color: wpTextColor2, thickness: 0.5),
        SizedBox(height: 10),
      ],
    );
  }
}
