import 'dart:ffi';

import 'package:play_shakespeare/utils/socket_client.dart';

class SocketMethods {
  final _socketClient = SocketClient.instance.socket!;

  // create game
  createGame(String title) {
    if(title.isNotEmpty) {
      _socketClient.emit('create-game', {
        'title': title,
      });
    }
  }
}