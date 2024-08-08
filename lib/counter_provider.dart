import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// step 1
class CounterProvider extends ChangeNotifier{
  ///data
  int _count = 0;
  List<Map<String, dynamic>> mData =[];

  ///events
  ///set, add, update
  void incrementCount(){
    _count++;
    notifyListeners();
  }

  ///get
  int getValue(){
    return _count;
  }

}