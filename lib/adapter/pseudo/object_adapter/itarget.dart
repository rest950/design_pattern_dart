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
class Adapter implements ITarget {
  ///Object Adapter 藉由"擁有"Adaptee這個"object"去執行request()
  Adaptee _adaptee;

  Adapter() {
    _adaptee = Adaptee();
  }

  @override
  void execute() {
    _adaptee.request();
  }
}
