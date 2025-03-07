import 'package:flutter/material.dart';
import 'package:mvvm_example/data/repositories/todos/todos_repository_remote.dart';
import 'package:mvvm_example/data/services/api/api_client.dart';
import 'package:mvvm_example/ui/todo/view_models/todo_view_model.dart';
import 'package:mvvm_example/ui/todo/widgets/todo_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo MVVM',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: TodoScreen(
        viewModel: TodoViewModel(
          todosRepository: TodosRepositoryRemote(apiClient: ApiClient()),
        ),
      ),
    );
  }
}
