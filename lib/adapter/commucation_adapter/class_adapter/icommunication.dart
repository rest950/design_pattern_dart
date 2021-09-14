import 'dart:typed_data';

/// <summary>
/// 這就是一個 Target (Adapter 的抽象)，先定義主要職責
/// </summary>
abstract class ICommunication {
  Future<bool> connect(String target);

  void disconnect();

  ///Uint8List	= byte[] =	ByteArray
  void send(Uint8List buffer);

  void setReceiveListener(void Function(Uint8List) onData);
}
