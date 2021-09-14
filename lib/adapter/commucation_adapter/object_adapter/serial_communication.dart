import 'dart:typed_data';

import 'package:design_pattern/adapter/commucation_adapter/object_adapter/icommunication.dart';
import 'package:libserialport/libserialport.dart';

/// <summary>
///  Serial port Adapter
/// </summary>
class SerialCommunication implements ICommunication {
  SerialPort _client;
  SerialPortReader _reader;

  @override
  Future<bool> connect(String target) async {
    _client = SerialPort(target);
    _reader = SerialPortReader(_client);
    return Future(_client.openReadWrite);
  }

  @override
  void disconnect() {
    if (_client.isOpen) {
      _client.close();
      _client.dispose();
    }
  }

  @override
  void send(Uint8List buffer) {
    if (_client.isOpen) {
      _client.write(buffer);
    }
  }

  @override
  void setReceiveListener(void Function(Uint8List p1) onData) {
    if (_client.isOpen) {
      _reader.stream.listen(onData);
    }
  }
}
