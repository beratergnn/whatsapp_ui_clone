import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/constant/colors.dart';
import 'package:whatsapp_ui_clone/models/updates_story_model.dart';

class CustomStoryList extends StatelessWidget {
  const CustomStoryList({super.key, this.onTap, required this.model});
  final Function()? onTap;
  final UpdateStoryModel model;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: onTap,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: model.itBeenViewed ? wpTextColor2 : wpTealGreen,
                      width: 2,
                    )),
                child: CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage(
                    model.imagePath,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 50,
                child: Text(
                  model.title,
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: wpTextColor,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 15),
      ],
    );
  }
}
