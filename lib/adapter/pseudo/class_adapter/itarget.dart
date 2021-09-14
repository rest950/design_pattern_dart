import 'package:design_pattern/adapter/pseudo/object_adapter/Adaptee.dart';

/// <summary>
/// Adapter 的抽象介面
/// </summary>
abstract class ITarget {
  void execute();
}

/// <summary>
/// 實作的 Adapter
/// </summary>
class Adapter extends Adaptee implements ITarget {
  ///Class Adapter 藉由"繼承"Adaptee這個"class"去執行request()
  @override
  void execute() {
    this.request();
  }
}
