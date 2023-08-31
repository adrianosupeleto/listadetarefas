import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tasks Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Modular.to.navigate('/tasks/');
          },
          child: const Text('Entrar'),
        ),
      ),
    );
  }
}
