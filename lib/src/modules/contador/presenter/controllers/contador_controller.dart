import 'package:flutter/cupertino.dart';

import '../../../../core/stores/contador.store.dart';
import '../../data/repositories/contato_repository.dart';

class ContadorController with ChangeNotifier {
  final ContadorRepository repository;
  final ContadorStore store;
  ContadorController(this.repository, this.store) {
    store.entity = repository.getContador();
    notifyListeners();
  }

  void increment() {
    store.entity.increment();
    notifyListeners();
  }

  void decrement() {
    store.entity.decrement();
    notifyListeners();
  }

  void reset() {
    store.entity.reset();
    notifyListeners();
  }

  setInterval(int value) {
    store.entity.setInterval(value);
    notifyListeners();
  }
}
