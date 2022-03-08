import 'package:flutter/cupertino.dart';

class TestModel with ChangeNotifier{
  int _count = 0;
  int get count => _count;
  void add(){
    _count++;
    notifyListeners();
  }
}