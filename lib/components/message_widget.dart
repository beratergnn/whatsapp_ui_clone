import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/constant/colors.dart';
import 'package:whatsapp_ui_clone/models/message_model.dart';

class MessageWidget extends StatelessWidget {
  final MessageModel message;

  MessageWidget({required this.message});

  @override
  Widget build(BuildContext context) {
    final isLongMessage = message.text.length > 50;

    return Container(
      alignment: message.isMe ? Alignment.centerRight : Alignment.centerLeft,
      margin: message.isMe
          ? EdgeInsets.only(bottom: 8.0, right: 8.0)
          : EdgeInsets.only(bottom: 8.0, left: 8.0),
      child: Column(
        crossAxisAlignment:
            message.isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Container(
            width:
                isLongMessage ? MediaQuery.of(context).size.width * 0.7 : null,
            decoration: BoxDecoration(
              color: message.isMe ? wpTealGreen : wpAppBarBackGroundColor,
              borderRadius: BorderRadius.circular(10.0),
            ),
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  message.text,
                  style: TextStyle(color: wpTextColor),
                ),
                Text(
                  message.time,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: wpTextColor.withOpacity(.6),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
