import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<String> _Listt = ['Lalal', 'tututu'];
  List<String> get Listt => _Listt;
  set Listt(List<String> value) {
    _Listt = value;
  }

  void addToListt(String value) {
    Listt.add(value);
  }

  void removeFromListt(String value) {
    Listt.remove(value);
  }

  void removeAtIndexFromListt(int index) {
    Listt.removeAt(index);
  }

  void updateListtAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    Listt[index] = updateFn(_Listt[index]);
  }

  void insertAtIndexInListt(int index, String value) {
    Listt.insert(index, value);
  }

  int _SendCicle = 1;
  int get SendCicle => _SendCicle;
  set SendCicle(int value) {
    _SendCicle = value;
  }

  String _Client = '';
  String get Client => _Client;
  set Client(String value) {
    _Client = value;
  }

  String _ClientName = '';
  String get ClientName => _ClientName;
  set ClientName(String value) {
    _ClientName = value;
  }
}
