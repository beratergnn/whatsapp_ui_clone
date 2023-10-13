class CallModel {
  final int callId;
  final String callImagePath;
  final String callName;
  final String callMadeOrReceivedPath;
  final String callDate;
  final String callTypePath;
  final int callTimes;

  CallModel(
      {required this.callId,
      required this.callImagePath,
      required this.callName,
      required this.callMadeOrReceivedPath,
      required this.callDate,
      required this.callTypePath,
      required this.callTimes});

  static List<CallModel> getCalls() {
    List<CallModel> callList = [];

    callList.add(
      CallModel(
        callId: 1,
        callImagePath: 'assets/images/avatar2.jpg',
        callName: 'My Life',
        callMadeOrReceivedPath: 'assets/icons/ic_call_made.svg',
        callDate: 'Bugün 00:18',
        callTypePath: 'assets/icons/ic_video_cam.svg',
        callTimes: 2,
      ),
    );
    callList.add(
      CallModel(
        callId: 2,
        callImagePath: 'assets/images/avatar3.jpg',
        callName: 'Adam Brooks',
        callMadeOrReceivedPath: 'assets/icons/ic_call_received.svg',
        callDate: 'Dün 18:11',
        callTypePath: 'assets/icons/ic_video_cam.svg',
        callTimes: 2,
      ),
    );
    callList.add(
      CallModel(
        callId: 3,
        callImagePath: 'assets/images/avatar5.jpg',
        callName: 'Kızım',
        callMadeOrReceivedPath: 'assets/icons/ic_call_received.svg',
        callDate: '6 Ekim 00:46',
        callTypePath: 'assets/icons/ic_call.svg',
        callTimes: 4,
      ),
    );
    callList.add(
      CallModel(
        callId: 4,
        callImagePath: 'assets/images/avatar2.jpg',
        callName: 'My Life',
        callMadeOrReceivedPath: 'assets/icons/ic_call_made.svg',
        callDate: '3 Ekim 12:25',
        callTypePath: 'assets/icons/ic_video_cam.svg',
        callTimes: 1,
      ),
    );
    callList.add(
      CallModel(
        callId: 5,
        callImagePath: 'assets/images/avatar2.jpg',
        callName: 'My Life',
        callMadeOrReceivedPath: 'assets/icons/ic_call_received.svg',
        callDate: '1 Ekim 15:23',
        callTypePath: 'assets/icons/ic_call.svg',
        callTimes: 4,
      ),
    );
    callList.add(
      CallModel(
        callId: 6,
        callImagePath: 'assets/images/avatar5.jpg',
        callName: 'Kızım',
        callMadeOrReceivedPath: 'assets/icons/ic_call_received.svg',
        callDate: '6 Eylül 11:44',
        callTypePath: 'assets/icons/ic_call.svg',
        callTimes: 3,
      ),
    );
    callList.add(
      CallModel(
        callId: 7,
        callImagePath: 'assets/images/avatar5.jpg',
        callName: 'Kızım',
        callMadeOrReceivedPath: 'assets/icons/ic_call_made.svg',
        callDate: '4 Eylül 23:46',
        callTypePath: 'assets/icons/ic_video_cam.svg',
        callTimes: 1,
      ),
    );
    callList.add(
      CallModel(
        callId: 8,
        callImagePath: 'assets/images/avatar5.jpg',
        callName: 'Kızım',
        callMadeOrReceivedPath: 'assets/icons/ic_call_made.svg',
        callDate: '2 Eylül 11:11',
        callTypePath: 'assets/icons/ic_video_cam.svg',
        callTimes: 1,
      ),
    );
    callList.add(
      CallModel(
        callId: 9,
        callImagePath: 'assets/images/avatar5.jpg',
        callName: 'Kızım',
        callMadeOrReceivedPath: 'assets/icons/ic_call_made.svg',
        callDate: '27 Agustos 15:22',
        callTypePath: 'assets/icons/ic_video_cam.svg',
        callTimes: 1,
      ),
    );
    callList.add(
      CallModel(
        callId: 12,
        callImagePath: 'assets/images/no_avatar.png',
        callName: '+222 222 222 22 22',
        callMadeOrReceivedPath: 'assets/icons/ic_call_received.svg',
        callDate: '26 Agustos 00:12',
        callTypePath: 'assets/icons/ic_call.svg',
        callTimes: 2,
      ),
    );
    callList.add(
      CallModel(
        callId: 11,
        callImagePath: 'assets/images/avatar5.jpg',
        callName: 'Kızım',
        callMadeOrReceivedPath: 'assets/icons/ic_call_made.svg',
        callDate: '22 Agustos 23:33',
        callTypePath: 'assets/icons/ic_video_cam.svg',
        callTimes: 1,
      ),
    );
    callList.add(
      CallModel(
        callId: 12,
        callImagePath: 'assets/images/no_avatar.png',
        callName: '+222 222 222 22 22',
        callMadeOrReceivedPath: 'assets/icons/ic_call_received.svg',
        callDate: '20 Agustos 13:55',
        callTypePath: 'assets/icons/ic_call.svg',
        callTimes: 2,
      ),
    );
    callList.add(
      CallModel(
        callId: 13,
        callImagePath: 'assets/images/avatar5.jpg',
        callName: 'Kızım',
        callMadeOrReceivedPath: 'assets/icons/ic_call_made.svg',
        callDate: '16 Agustos 16:55',
        callTypePath: 'assets/icons/ic_call.svg',
        callTimes: 1,
      ),
    );
    callList.add(
      CallModel(
        callId: 14,
        callImagePath: 'assets/images/no_avatar.png',
        callName: '+555 555 555 55 55',
        callMadeOrReceivedPath: 'assets/icons/ic_call_received.svg',
        callDate: '11 Agustos 22:14',
        callTypePath: 'assets/icons/ic_video_cam.svg',
        callTimes: 2,
      ),
    );
    callList.add(
      CallModel(
        callId: 15,
        callImagePath: 'assets/images/avatar2.jpg',
        callName: 'My Life',
        callMadeOrReceivedPath: 'assets/icons/ic_call_made.svg',
        callDate: '10 Agustos 23:46',
        callTypePath: 'assets/icons/ic_video_cam.svg',
        callTimes: 1,
      ),
    );
    callList.add(
      CallModel(
        callId: 16,
        callImagePath: 'assets/images/no_avatar.png',
        callName: '+999 999 999 99 99',
        callMadeOrReceivedPath: 'assets/icons/ic_call_received.svg',
        callDate: '3 Agustos 23:46',
        callTypePath: 'assets/icons/ic_call.svg',
        callTimes: 2,
      ),
    );
    return callList;
  }
}
