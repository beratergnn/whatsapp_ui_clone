import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp_ui_clone/constant/colors.dart';
import 'package:whatsapp_ui_clone/models/chats_model.dart';
import 'package:whatsapp_ui_clone/pages/other-pages/messaging_page.dart';
import 'package:whatsapp_ui_clone/pages/tab-pages/list-components/comp_chat_list.dart';

class ChatsPage extends StatelessWidget {
  List<ChatModel> getChatList = [];

  Future<List<ChatModel>> uploadChats() async {
    getChatList = ChatModel.getChats();
    return getChatList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: wpScaffoldBackGroundColor,
      body: FutureBuilder(
        future: uploadChats(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var chatsList = snapshot.data;
            return ListView.builder(
              itemCount: chatsList!.length,
              itemBuilder: (context, index) {
                var chatList = chatsList[index];
                /*  Modelin içindeki her bir index tek tek CustomChatList widgetına gönderilir.
                    widget da gelen sayıya göre n adet çizimi yapar. */

                return CustomChatList(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) =>
                                MessagingPage(personModel: chatList))));
                  },
                  model: chatList,
                );
              },
            );
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
