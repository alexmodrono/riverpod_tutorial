import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/models/todo_model.dart';
import 'package:riverpod_tutorial/services/todo_service.dart';

class TodoProvider {
  /// A provider for the todo service.
  static final todoServiceProvider =
      Provider<TodoService>((ref) => TodoService());

  /// A future provider for obtaining all todos
  static final todos = FutureProvider.autoDispose<List<TodoModel>>(
    (ref) async {
      return ref.read(todoServiceProvider).getTodos();
    },
  );
}
