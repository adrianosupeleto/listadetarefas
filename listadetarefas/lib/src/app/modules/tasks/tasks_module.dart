import 'package:flutter_modular/flutter_modular.dart';
import 'tasks_page.dart';

class TasksModule extends Module {
  @override
  List<Bind> get binds => [];
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => const TasksPage()),
      ];
}
