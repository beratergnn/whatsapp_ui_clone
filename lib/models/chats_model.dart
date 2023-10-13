class ChatModel {
  final int chatId;
  final String chatImagePath;
  final String chatName;
  final String chatLastMessage;
  final String chatDate;
  final bool? chatIsVolumeOff;
  final bool? chatIsPinned;
  final int? chatStackMessage;

  ChatModel(
      {required this.chatId,
      required this.chatImagePath,
      required this.chatName,
      required this.chatLastMessage,
      required this.chatDate,
      this.chatIsVolumeOff,
      this.chatIsPinned,
      this.chatStackMessage});

  static List<ChatModel> getChats() {
    List<ChatModel> chatList = [];

    chatList.add(
      ChatModel(
        chatId: 1,
        chatImagePath: 'assets/images/avatar2.jpg',
        chatName: 'My Life',
        chatLastMessage:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
        chatDate: '16:49',
        chatIsVolumeOff: false,
        chatIsPinned: true,
        chatStackMessage: 5,
      ),
    );
    chatList.add(
      ChatModel(
        chatId: 2,
        chatImagePath: 'assets/images/avatar1.jpg',
        chatName: 'Mehmet',
        chatLastMessage:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
        chatDate: '16:49',
        chatIsVolumeOff: false,
        chatIsPinned: false,
        chatStackMessage: 1,
      ),
    );
    chatList.add(
      ChatModel(
        chatId: 3,
        chatImagePath: 'assets/images/avatar3.jpg',
        chatName: 'Adam Brooks',
        chatLastMessage:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
        chatDate: '08:22',
        chatIsVolumeOff: true,
        chatIsPinned: false,
        chatStackMessage: 0,
      ),
    );
    chatList.add(
      ChatModel(
        chatId: 4,
        chatImagePath: 'assets/images/avatar4.jpg',
        chatName: 'Larry',
        chatLastMessage:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
        chatDate: '16:49',
        chatIsVolumeOff: false,
        chatIsPinned: false,
        chatStackMessage: 0,
      ),
    );
    // --------------------------------
    chatList.add(
      ChatModel(
        chatId: 5,
        chatImagePath: 'assets/images/avatar5.jpg',
        chatName: 'Kızım',
        chatLastMessage:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
        chatDate: 'Yesterday',
        chatIsVolumeOff: false,
        chatIsPinned: false,
        chatStackMessage: 3,
      ),
    );
    chatList.add(
      ChatModel(
        chatId: 6,
        chatImagePath: 'assets/images/no_avatar.png',
        chatName: '+999 999 999 99 99',
        chatLastMessage:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
        chatDate: 'Yesterday',
        chatIsVolumeOff: false,
        chatIsPinned: false,
        chatStackMessage: 0,
      ),
    );
    chatList.add(
      ChatModel(
        chatId: 7,
        chatImagePath: 'assets/images/avatar6.jpg',
        chatName: 'Kuzen',
        chatLastMessage:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
        chatDate: 'Yesterday',
        chatIsVolumeOff: false,
        chatIsPinned: false,
        chatStackMessage: 0,
      ),
    );
    chatList.add(
      ChatModel(
        chatId: 8,
        chatImagePath: 'assets/images/avatar7.jpg',
        chatName: 'Mehmet Bey',
        chatLastMessage:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
        chatDate: '04.09.2023',
        chatIsVolumeOff: false,
        chatIsPinned: false,
        chatStackMessage: 0,
      ),
    );
    chatList.add(
      ChatModel(
        chatId: 9,
        chatImagePath: 'assets/images/no_avatar.png',
        chatName: '+111 111 111 11 11',
        chatLastMessage:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
        chatDate: '04.09.2023',
        chatIsVolumeOff: false,
        chatIsPinned: false,
        chatStackMessage: 0,
      ),
    );
    chatList.add(
      ChatModel(
        chatId: 10,
        chatImagePath: 'assets/images/avatar8.jpg',
        chatName: 'Trader',
        chatLastMessage:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
        chatDate: '15.08.2023',
        chatIsVolumeOff: false,
        chatIsPinned: false,
        chatStackMessage: 0,
      ),
    );

    chatList.add(
      ChatModel(
        chatId: 11,
        chatImagePath: 'assets/images/no_avatar.png',
        chatName: '+111 111 111 11 11',
        chatLastMessage:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
        chatDate: '04.09.2023',
        chatIsVolumeOff: true,
        chatIsPinned: false,
        chatStackMessage: 0,
      ),
    );
    chatList.add(
      ChatModel(
        chatId: 12,
        chatImagePath: 'assets/images/no_avatar.png',
        chatName: '+111 111 111 11 11',
        chatLastMessage:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
        chatDate: '04.09.2023',
        chatIsVolumeOff: false,
        chatIsPinned: false,
        chatStackMessage: 0,
      ),
    );
    chatList.add(
      ChatModel(
        chatId: 13,
        chatImagePath: 'assets/images/no_avatar.png',
        chatName: '+111 111 111 11 11',
        chatLastMessage:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
        chatDate: '04.09.2023',
        chatIsVolumeOff: true,
        chatIsPinned: false,
        chatStackMessage: 0,
      ),
    );

    return chatList;
  }
}
