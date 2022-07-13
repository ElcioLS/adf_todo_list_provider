import 'package:adf_todo_list_provider/app/core/modules/todo_list_module.dart';
import 'package:adf_todo_list_provider/app/modules/auth/login/Login_controller.dart';
import 'package:adf_todo_list_provider/app/modules/auth/register/register_controller.dart';
import 'package:adf_todo_list_provider/app/modules/auth/register/register_page.dart';
import 'package:provider/provider.dart';

import 'login/login_page.dart';

class AuthModule extends TodoListModule {
  AuthModule()
      : super(
          bindings: [
            ChangeNotifierProvider(
              create: (_) => LoginController(),
            ),
            ChangeNotifierProvider(
              create: (context) =>
                  RegisterController(userService: context.read()),
            ),
          ],
          routers: {
            '/login': (context) => LoginPage(),
            '/register': (context) => const RegisterPage(),
          },
        );
}
