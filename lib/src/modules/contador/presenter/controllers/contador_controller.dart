import '../../data/repositories/contato_repository.dart';
import '../../domain/entities/contador_entity.dart';

class ContadorController {
  final ContadorRepository repository;
  ContadorController(this.repository);


  ContadorEntity get entity  => repository.getContador();

  void increment() {
    entity.increment();
  }

  void decrement() {
    entity.decrement();
  }

  void reset() {
    entity.reset();
  }
}