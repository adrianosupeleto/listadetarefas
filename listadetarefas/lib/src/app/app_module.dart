import 'package:flutter_modular/flutter_modular.dart';
import 'app_splash_page.dart';
import 'modules/tasks/tasks_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: ((context, args) => const SplashPage())),
        ModuleRoute('/tasks', module: TasksModule()),
      ];
}
