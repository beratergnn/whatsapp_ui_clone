import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp_ui_clone/components/app_bar_text.dart';
import 'package:whatsapp_ui_clone/components/icon_button.dart';
import 'package:whatsapp_ui_clone/components/message_widget.dart';
import 'package:whatsapp_ui_clone/constant/colors.dart';
import 'package:whatsapp_ui_clone/models/chats_model.dart';
import 'package:whatsapp_ui_clone/models/message_model.dart';

class MessagingPage extends StatelessWidget {
  final ChatModel personModel;
  MessagingPage({super.key, required this.personModel});
  final TextEditingController _messageController = TextEditingController();
  List<MessageModel> getMessageList = [];

  Future<List<MessageModel>> uploadMessages() async {
    getMessageList = MessageModel.getMessages();
    return getMessageList;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: wpTextColor2,
      appBar: AppBar(
        backgroundColor: wpAppBarBackGroundColor,
        leading: Row(
          children: [
            CustomIconButton(
              iconPath: 'ic_arrow_left_alt.svg',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
        title: Row(
          children: [
            CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage(personModel.chatImagePath),
            ),
            SizedBox(width: 10),
            AppBarText(text: personModel.chatName),
          ],
        ),
        titleSpacing: 0,
        actions: [
          CustomIconButton(onPressed: () {}, iconPath: 'ic_videocam.svg'),
          CustomIconButton(onPressed: () {}, iconPath: 'ic_call.svg'),
          CustomIconButton(onPressed: () {}, iconPath: 'ic_more.svg'),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Expanded(
            child: FutureBuilder(
                future: uploadMessages(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                        child: CircularProgressIndicator(
                      color: wpTextColor,
                    ));
                  } else if (snapshot.hasError) {
                    return Text('Veri alinamadi: ${snapshot.error}');
                  } else if (snapshot.hasData) {
                    var messageList = snapshot.data;
                    return ListView.builder(
                      itemCount: messageList!.length,
                      itemBuilder: (context, index) {
                        final message = messageList[index];
                        return MessageWidget(message: message);
                      },
                    );
                  } else {
                    return Text('Unexpected Situation');
                  }
                }),
          ),
          Container(
            margin: EdgeInsets.only(left: 5, right: 5, top: 5),
            decoration: BoxDecoration(
                color: wpAppBarBackGroundColor,
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    'assets/icons/ic_smile.svg',
                    height: 28,
                    color: wpTextColor2,
                  ),
                ),
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    decoration: InputDecoration(
                        hintText: "Mesaj",
                        hintStyle: TextStyle(color: wpTextColor2)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    'assets/icons/ic_attach_file.svg',
                    height: 28,
                    color: wpTextColor2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SvgPicture.asset(
                    'assets/icons/ic_photo_camera.svg',
                    height: 28,
                    color: wpTextColor2,
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
