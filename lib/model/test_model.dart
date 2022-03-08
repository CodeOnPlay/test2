import 'package:flutter/cupertino.dart';

class TestModel with ChangeNotifier{
  int _count = 0;
  int get count => _count;
  void add(){
    _count++;
    print(11111111);
    print(3333333);
    notifyListeners();
  }
}