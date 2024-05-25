import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier{

  int _num = 0;

  int get num => _num;

  void setCount(){
    _num++;
    notifyListeners();
  }
}