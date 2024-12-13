import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:amplify_api/amplify_api.dart';
import 'package:testing_gen_2/models/Todo.dart';
import 'package:testing_gen_2/pages/base_page.dart';
import 'package:testing_gen_2/pages/todo_add_page.dart';

class TodosData {
  List<Todo> todos;
  bool isFetching;
  bool isError;

  TodosData({
    required this.todos,
    this.isFetching = false,
    this.isError = false,
  });

  factory TodosData.initial() {
    return TodosData(
      todos: [],
      isFetching: false,
      isError: false,
    );
  }
}

class TodosListPage extends StatefulWidget {
  const TodosListPage({super.key});

  @override
  State<TodosListPage> createState() => _TodosListPageState();
}

class _TodosListPageState extends State<TodosListPage> {
  final _todosData = TodosData.initial();

  _loghMe() async {
    final user = await Amplify.Auth.getCurrentUser();
    safePrint(user);
  }

  Future<void> _fetchTodos() async {
    await _loghMe();
    if (_todosData.isFetching) return;

    setState(() {
      _todosData.isFetching = true;
      _todosData.isError = false;
    });

    try {
      final request = ModelQueries.list(Todo.classType);
      final response = await Amplify.API.query(request: request).response;
      safePrint(response);

      if (response.hasErrors) {
        safePrint('errors: ${response.errors}');
        setState(() {
          _todosData.isError = true;
        });
        return;
      }

      setState(() {
        final todos = response.data?.items;
        todos?[0];
        _todosData.todos = todos!.whereType<Todo>().toList();
      });
    } on ApiException catch (e) {
      safePrint('Query failed: $e');
    } finally {
      setState(() {
        _todosData.isFetching = false;
      });
    }
  }

  void _handleAddTodo() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TodoAddPage()),
    );
  }

  @override
  void initState() {
    super.initState();
    _fetchTodos();
  }

  Widget _getWidget() {
    if (_todosData.isFetching) {
      return const Text('Fetching todos...');
    } else if (_todosData.isError) {
      return const Text('No todos found, error fetching todos');
    } else if (_todosData.todos.isEmpty) {
      return const Text('No todos found');
    }
    return ListView.builder(
      itemCount: _todosData.todos.length,
      itemBuilder: (context, index) {
        return Text(_todosData.todos[index].content ?? '');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Add Random Todo'),
        onPressed: _handleAddTodo,
      ),
      appBar: AppBar(
        title: const Text('Todos'),
        centerTitle: true,
      ),
      body: _getWidget(),
    );
  }
}
