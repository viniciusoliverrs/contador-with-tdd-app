import 'package:contador/src/modules/contador/data/repositories/contato_repository.dart';
import 'package:contador/src/modules/contador/presenter/controllers/contador_controller.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
   test('Deve incrementar o contador', () {
    var repository = ContadorRepository();
    var controller = ContadorController(repository);
    controller.increment();
    expect(controller.entity.value, 1);
  });

  test('Deve decrementar o contador', () {
    var repository = ContadorRepository();
    var controller = ContadorController(repository);
    controller.decrement();
    expect(controller.entity.value, -1);
  });

  test('Deve resetar o contador', () {
    var repository = ContadorRepository();
    var controller = ContadorController(repository);
    controller.increment();
    controller.increment();
    controller.increment();
    controller.reset();
    expect(controller.entity.value, 0);
  });
}