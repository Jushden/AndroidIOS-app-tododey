import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tododey/models/task_data.dart';
import 'screens/tasks_screen.dart';

void main() {
  runApp(const MyToDoApp());
}

class MyToDoApp extends StatelessWidget {
  const MyToDoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('build root');
    return ChangeNotifierProvider.value(
      value: TaskData(),
      child: const MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
