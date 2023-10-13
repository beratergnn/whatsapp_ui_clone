class MessageModel {
  final String text;
  final bool isMe;
  final String time;

  MessageModel(this.text, this.isMe, this.time);

  static List<MessageModel> getMessages() {
    List<MessageModel> messages = [];

    messages.add(
      MessageModel("Merhaba, nasılsınız?", false, '10:22'),
    );
    messages.add(
      MessageModel("Merhaba! Ben iyiyim, siz nasılsınız?", true, '10:23'),
    );
    messages.add(
      MessageModel("Ben de iyiyim, teşekkür ederim.", false, '10:24'),
    );
    messages.add(
      MessageModel("Size nasıl yardımcı olabilirim?", false, '10:25'),
    );
    messages.add(
      MessageModel("Bir şey sormak istemiyorum, teşekkürler.", true, '10:26'),
    );
    messages.add(
      MessageModel("Elbette, başka bir sorunuz olursa sormaktan çekinmeyin.",
          false, '10:27'),
    );
    messages.add(
      MessageModel("Teşekkür ederim, iyi günler!", true, '10:28'),
    );
    messages.add(
      MessageModel("Size de iyi günler dilerim.", false, '10:29'),
    );
    messages.add(
      MessageModel("Merhaba! Ben iyiyim, siz nasılsınız?", false, '12:34'),
    );
    messages.add(
      MessageModel("Ben de iyiyim, teşekkür ederim.", true, '12:35'),
    );
    messages.add(
      MessageModel("Size nasıl yardımcı olabilirim?", true, '12:36'),
    );
    messages.add(
      MessageModel("Bir şey sormak istemiyorum, teşekkürler.", false, '12:37'),
    );
    messages.add(
      MessageModel("Elbette, başka bir sorunuz olursa sormaktan çekinmeyin.",
          true, '12:38'),
    );
    messages.add(
      MessageModel("Teşekkür ederim, iyi günler!", false, '12:39'),
    );
    messages.add(
      MessageModel("Size de iyi günler dilerim.", true, '12:40'),
    );

    return messages;
  }
}
