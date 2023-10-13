import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp_ui_clone/constant/colors.dart';
import 'package:whatsapp_ui_clone/models/chats_model.dart';

class CustomChatList extends StatelessWidget {
  const CustomChatList({super.key, required this.model, this.onTap});
  final ChatModel model;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                model.chatImagePath,
                height: 50,
                width: 50,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.chatName,
                    style: TextStyle(
                      color: wpTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  Text(
                    model.chatLastMessage,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      color: wpTextColor2,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  model.chatDate,
                  style: TextStyle(
                    color: wpTextColor2,
                    fontSize: 13,
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    model.chatIsPinned == true
                        ? SvgPicture.asset(
                            'assets/icons/ic_pin.svg',
                            height: 24,
                            color: wpTextColor2,
                          )
                        : Container(),
                    model.chatIsPinned == true
                        ? SizedBox(width: 5)
                        : SizedBox(),
                    model.chatIsVolumeOff == true
                        ? SvgPicture.asset(
                            'assets/icons/ic_volume_off.svg',
                            height: 24,
                            color: wpTextColor2,
                          )
                        : Container(),
                    model.chatIsVolumeOff == true
                        ? SizedBox(width: 5)
                        : SizedBox(),
                    model.chatStackMessage! > 0
                        ? Container(
                            height: 18,
                            width: 18,
                            decoration: BoxDecoration(
                              color: wpTealGreen,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                model.chatStackMessage.toString(),
                                style: TextStyle(
                                    color: wpScaffoldBackGroundColor,
                                    fontSize: 12),
                              ),
                            ),
                          )
                        : Container(),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
