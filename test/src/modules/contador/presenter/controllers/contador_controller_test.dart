import 'package:contador/src/core/stores/contador.store.dart';
import 'package:contador/src/modules/contador/data/repositories/contato_repository.dart';
import 'package:contador/src/modules/contador/presenter/controllers/contador_controller.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Deve incrementar o contador', () {
    var repository = ContadorRepository();
    var store = ContadorStore();
    var controller = ContadorController(repository, store);
    controller.increment();
    expect(controller.store.entity.value, 1);
  });

  test('Deve decrementar o contador', () {
    var repository = ContadorRepository();
    var store = ContadorStore();
    var controller = ContadorController(repository, store);
    controller.decrement();
    expect(controller.store.entity.value, -1);
  });

  test('Deve resetar o contador', () {
  var repository = ContadorRepository();
    var store = ContadorStore();
    var controller = ContadorController(repository,store);
    controller.increment();
    controller.increment();
    controller.increment();
    controller.reset();
    expect(controller.store.entity.value, 0);
  });
}
