import 'package:contador/src/core/stores/contador.store.dart';
import 'package:contador/src/modules/contador/data/repositories/contato_repository.dart';
import 'package:contador/src/modules/contador/presenter/controllers/contador_controller.dart';
import 'package:contador/src/modules/contador/presenter/views/contador_view.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ContadorStore()),
    Bind((i) => ContadorRepository()),
    Bind.factory((i) => ContadorController(
          i.get<ContadorRepository>(),
          i.get<ContadorStore>(),
        )),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/',
        child: (_, args) => ContadorView(
              controller: Modular.get<ContadorController>(),
            )),
  ];
}
