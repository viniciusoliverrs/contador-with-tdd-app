import 'package:contador/src/modules/contador/domain/entities/contador_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('contador entity ...', () {
    var entity = ContadorEntity(1);
    expect(entity.value, 1);
  });

  test('Deve incrementar o contador', () {
    var entity = ContadorEntity(2);
    entity.increment();
    expect(entity.value, 3);
  });

  test('Deve decrementar o contador', () {
    var entity = ContadorEntity(2);
    entity.decrement();
    expect(entity.value, 1);
  });
}
