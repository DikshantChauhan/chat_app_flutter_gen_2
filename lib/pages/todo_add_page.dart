import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:testing_gen_2/models/Todo.dart';
import 'package:testing_gen_2/pages/base_page.dart';
import 'package:testing_gen_2/pages/todos_list_page.dart';

class TodoAddPage extends StatelessWidget {
  TodoAddPage({super.key});

  final TextEditingController _todoController = TextEditingController();

  void handleAddTodo(BuildContext context) async {
    final text = _todoController.text;

    final Todo todo = Todo(
      id: uuid(),
      content: text,
    );

    final request = ModelMutations.create(todo);
    final response = await Amplify.API.mutate(request: request).response;
    if (response.hasErrors) {
      safePrint('Creating Todo failed. ${response.errors}');
    } else {
      safePrint('Creating Todo successful. ${response.data}');
      if (context.mounted) {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const TodosListPage()));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
      appBar: AppBar(
        title: const Text('Add Todo'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _todoController,
              decoration: const InputDecoration(
                labelText: 'Todo',
                hintText: 'Enter your todo',
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => handleAddTodo(context),
              child: const Text('Add Todo'),
            ),
          ],
        ),
      ),
    );
  }
}
