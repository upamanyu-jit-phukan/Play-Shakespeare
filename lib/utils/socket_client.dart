import 'package:socket_io_client/socket_io_client.dart' as IO;

class SocketClient {
  IO.Socket? socket;
  static SocketClient? _instance;

  SocketClient._internal() {
    socket = IO.io('http://127.0.0.1/3000', <String, dynamic> {
      'transports': ['websocket'],
      'autoConnect': false,
    });
    socket!.connect();
  }
  
  static SocketClient get instance {
    if(_instance == null) {
      _instance = SocketClient._internal();
    }
    _instance??=SocketClient._internal();
    return _instance!;
  }
}