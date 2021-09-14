import 'package:design_pattern/singleton/pseudo/singleton.dart';

void main() {
  ///Factory constructor
  SingletonOne().execute();

  ///Static field with getter
  //SingletonTwo();
  SingletonTwo.instance.execute();
}
