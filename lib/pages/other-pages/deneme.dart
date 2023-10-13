import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/constant/colors.dart';

class ChatScreen extends StatefulWidget {
  @override
  State createState() => ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  final List<Message> _messages = [
    Message("Merhaba, nasılsınız?", false, '10:22'),
    Message("Merhaba! Ben iyiyim, siz nasılsınız?", true, '10:23'),
    Message("Ben de iyiyim, teşekkür ederim.", false, '10:24'),
    Message("Size nasıl yardımcı olabilirim?", false, '10:25'),
    Message("Bir şey sormak istemiyorum, teşekkürler.", true, '10:26'),
    Message("Elbette, başka bir sorunuz olursa sormaktan çekinmeyin.", false,
        '10:27'),
    Message("Teşekkür ederim, iyi günler!", true, '10:28'),
    Message("Size de iyi günler dilerim.", false, '10:29'),
    Message("Merhaba, nasılsınız?", true, '12:33'),
    Message("Merhaba! Ben iyiyim, siz nasılsınız?", false, '12:34'),
    Message("Ben de iyiyim, teşekkür ederim.", true, '12:35'),
    Message("Size nasıl yardımcı olabilirim?", true, '12:36'),
    Message("Bir şey sormak istemiyorum, teşekkürler.", false, '12:37'),
    Message("Elbette, başka bir sorunuz olursa sormaktan çekinmeyin.", true,
        '12:38'),
    Message("Teşekkür ederim, iyi günler!", false, '12:39'),
    Message("Size de iyi günler dilerim.", true, '12:40'),
  ];

  final TextEditingController _textController = TextEditingController();

  void _handleSubmittedMessage(String text, String time) {
    if (text.isNotEmpty) {
      setState(() {
        _messages.add(Message(text, true, time));
      });
      _textController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mesajlar'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[index];
                return MessageWidget(message: message);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: _textController,
                    decoration:
                        InputDecoration(hintText: 'Mesajınızı girin...'),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    _handleSubmittedMessage(_textController.text, '10:22');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Message {
  final String text;
  final bool isMe;
  final String time;

  Message(this.text, this.isMe, this.time);
}

class MessageWidget extends StatelessWidget {
  final Message message;

  MessageWidget({required this.message});

  @override
  Widget build(BuildContext context) {
    final isLongMessage = message.text.length > 50;

    return Container(
      alignment: message.isMe ? Alignment.centerRight : Alignment.centerLeft,
      margin: EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
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
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Text(
                  message.text,
                  style: TextStyle(color: wpTextColor),
                ),
                Text(
                  message.time,
                  style: TextStyle(fontSize: 12, color: wpTextColor2),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
