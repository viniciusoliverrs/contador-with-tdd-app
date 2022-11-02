import '../../domain/data/icontador_repository.dart';
import '../../domain/entities/contador_entity.dart';

class ContadorRepository implements IContadorRepository {
  final ContadorEntity _entity = ContadorEntity(0);
  @override
  ContadorEntity getContador() {
    return _entity;
  }
}