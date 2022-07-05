import 'package:adf_todo_list_provider/app/core/database/sqlite_adm_connection.dart';
import 'package:adf_todo_list_provider/app/modules/auth/auth_module.dart';
import 'package:adf_todo_list_provider/app/modules/splash/splash_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final sqliteAdmConnection = SqliteAdmConnection();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(sqliteAdmConnection);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(sqliteAdmConnection);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      title: 'Todo List com Provider',
      routes: {
        ...AuthModule().routers,
      },
      home: const SplashPage(),
    );
  }
}
