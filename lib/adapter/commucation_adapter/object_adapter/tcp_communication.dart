import 'dart:io';
import 'dart:typed_data';

import 'package:design_pattern/adapter/commucation_adapter/object_adapter/icommunication.dart';

/// <summary>
/// Tcp Adapter
/// </summary>
class TcpCommunication implements ICommunication {
  Socket _client;

  TcpCommunication();

  @override
  Future<bool> connect(String target) async {
    final data = target.split(':');
    final host = data[0];
    final port = int.tryParse(data[1]);
    try {
      _client = await Socket.connect(host, port, timeout: Duration(seconds: 5));
    } catch (ex) {
      return false;
    }
    return true;
  }

  @override
  void disconnect() {
    _client.destroy();
  }

  @override
  void send(Uint8List buffer) {
    if (_client != null) {
      _client.write(buffer);
    }
  }

  @override
  void setReceiveListener(void Function(Uint8List data) onData) {
    if (_client != null) {
      _client.listen(onData);
    }
  }
}
