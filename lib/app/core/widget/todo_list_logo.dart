import 'package:adf_todo_list_provider/app/core/ui/theme_extensions.dart';
import 'package:flutter/material.dart';

class TodoListLogo extends StatelessWidget {
  const TodoListLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/logo.png', height: 200),
        Text('Todo List', style: context.textTeme.headline6),
      ],
    );
  }
}
