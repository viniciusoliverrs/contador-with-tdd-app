import 'package:contador/src/modules/contador/domain/data/icontador_repository.dart';
import 'package:contador/src/modules/contador/domain/entities/contador_entity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
class ContadorRepositoryMock extends Mock implements IContadorRepository {}
void main() {
  test('Deve incrementar o contador', () {
    var repository = ContadorRepositoryMock();
    when(() => repository.getContador()).thenReturn(ContadorEntity(2));
    var entity = repository.getContador();
    entity.increment();
    expect(entity.value, 3);
  });
  test('Deve decrementar o contador', () {
    var repository = ContadorRepositoryMock();
    when(() => repository.getContador()).thenReturn(ContadorEntity(2));
    var entity = repository.getContador();
    entity.decrement();
    expect(entity.value, 1);
  });
}