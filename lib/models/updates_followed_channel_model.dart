class UpdateFollowedChannelModel {
  final String channelImagePath;
  final String channelName;
  final String lastMessage;
  final int messageType;
  // 0 - mesaj, 1 - mesajWithImage, 2 - mesajWithVideo
  final int unreadMessage;
  final String dateTime;
  final String messageImagePath;

  UpdateFollowedChannelModel(
      {required this.channelImagePath,
      required this.channelName,
      required this.lastMessage,
      required this.messageType,
      required this.unreadMessage,
      required this.dateTime,
      required this.messageImagePath});

  static List<UpdateFollowedChannelModel> getFollowedChannel() {
    List<UpdateFollowedChannelModel> followedChannelList = [];

    followedChannelList.add(
      UpdateFollowedChannelModel(
        channelImagePath: 'assets/images/logo_mackolik.png',
        channelName: 'Maçkolik',
        lastMessage:
            'Lorem ipsum dolor sit amet, consectetur adip, sed do eiusmod tempor incididunt ut labore et. Lorem ipsum dolor sit amet, consectetur. Lorem ipsum dolor sit amet, consectetur. Lorem ipsum dolor sit ametS',
        messageType: 1,
        unreadMessage: 2,
        dateTime: '• 40 dakika önce',
        messageImagePath: 'assets/images/icardi.jpg',
      ),
    );
    followedChannelList.add(
      UpdateFollowedChannelModel(
        channelImagePath: 'assets/images/logo_galatasaray.jpg',
        channelName: 'Galatasaray',
        lastMessage:
            'Lorem ipsum dolor sit amet, consectetur adip, sed do eiusmod tempor incididunt ut labore et. Lorem ipsum dolor sit amet, consectetur. Lorem ipsum dolor sit amet, consectetur. Lorem ipsum dolor sit ametS',
        messageType: 2,
        unreadMessage: 0,
        dateTime: 'Dün',
        messageImagePath: 'assets/images/icardi.jpg',
      ),
    );
    followedChannelList.add(
      UpdateFollowedChannelModel(
        channelImagePath: 'assets/images/no_avatar.png',
        channelName: 'Non',
        lastMessage:
            'Lorem ipsum dolor sit amet, consectetur adip, sed do eiusmod tempor incididunt ut labore et. Lorem ipsum dolor sit amet, consectetur. Lorem ipsum dolor sit amet, consectetur. Lorem ipsum dolor sit ametS',
        messageType: 0,
        unreadMessage: 0,
        dateTime: 'Dün',
        messageImagePath: 'assets/images/icardi.jpg',
      ),
    );

    return followedChannelList;
  }
}
