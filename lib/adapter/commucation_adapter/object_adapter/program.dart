import 'dart:typed_data';

import 'package:design_pattern/adapter/commucation_adapter/object_adapter/icommunication.dart';
import 'package:design_pattern/adapter/commucation_adapter/object_adapter/serial_communication.dart';
import 'package:design_pattern/adapter/commucation_adapter/object_adapter/tcp_communication.dart';
import 'package:libserialport/libserialport.dart';

void main() {
  ///TCP Communication Adapter
  ICommunication tcp = TcpCommunication();
  tcp.connect('127.0.0.1:7');
  tcp.send(Uint8List.fromList([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]));
  tcp.setReceiveListener((data) {
    print(data);
  });
  tcp.disconnect();

  ///Serial Communication Adapter
  ICommunication serialPort = SerialCommunication();
  serialPort.connect(SerialPort.availablePorts.first);
  serialPort.send(Uint8List.fromList([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]));
  serialPort.setReceiveListener((data) {
    print(data);
  });
  serialPort.disconnect();
}
