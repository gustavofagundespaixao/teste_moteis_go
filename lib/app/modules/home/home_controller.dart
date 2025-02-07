import 'package:flutter/material.dart';
import 'package:teste_moteis_go/app/core/models/motel_model.dart';
import 'package:teste_moteis_go/app/core/repositories/motel_repository.dart';

class HomeController with ChangeNotifier {
  final MotelRepository _repository = MotelRepository();

  List<MotelModel> items = [];
  bool loading = false;
  bool error = false;
  int segmentedIndex = 0;

  void changeSegmented(int value) {
    segmentedIndex = value;
    notifyListeners();
  }

  Future<void> get() async {
    loading = true;
    notifyListeners();

    try {
      items = await _repository.get();
    } catch (e) {
      error = true;
    }

    loading = false;
    notifyListeners();
  }
}
