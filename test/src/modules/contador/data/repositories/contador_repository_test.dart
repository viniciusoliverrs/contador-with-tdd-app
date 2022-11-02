import 'package:contador/src/modules/contador/data/repositories/contato_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Deve incrementar o contador', () {
    var repository = ContadorRepository();
    var entity = repository.getContador();
    entity.increment();
    expect(entity.value, 1);
  });

  test('Deve decrementar o contador', () {
    var repository = ContadorRepository();
    var entity = repository.getContador();
    entity.decrement();
    expect(entity.value, -1);
  });
}
