import 'package:contador/src/modules/contador/domain/entities/contador_entity.dart';

abstract class IContadorRepository {
  ContadorEntity getContador();
}