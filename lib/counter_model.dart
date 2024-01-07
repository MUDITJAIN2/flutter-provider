import 'package:flutter/material.dart';

class CounterModel extends ChangeNotifier {
  // change notifier is a class that provides change notification to its listeners - home
  // also to to liftup state to app state.
  int _count = 0; // private 

  int get count => _count; // getter allows to access the private variable.

  void increment() {
    _count++;
    notifyListeners(); // tells the widgets/consumers that are listening to this model to rebuild.
  }
}