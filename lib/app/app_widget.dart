import 'package:adf_todo_list_provider/app/core/database/sqlite_adm_connection.dart';
import 'package:adf_todo_list_provider/app/core/ui/todo_list_ui_config.dart';
import 'package:adf_todo_list_provider/app/modules/auth/auth_module.dart';
import 'package:adf_todo_list_provider/app/modules/splash/splash_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final sqliteConnection = SqliteAdmConnection();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(sqliteConnection);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(sqliteConnection);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo List com Provider',
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      theme: TodoListUiConfig.theme,
      routes: {
        ...AuthModule().routers,
      },
      home: const SplashPage(),
    );
  }
}
