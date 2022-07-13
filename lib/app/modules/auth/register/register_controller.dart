// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:adf_todo_list_provider/app/exception/auth_exception.dart';
import 'package:adf_todo_list_provider/app/services/user/user_service.dart';
import 'package:flutter/cupertino.dart';

class RegisterController extends ChangeNotifier {
  final UserService _userService;
  String? error;
  bool success = false;

  RegisterController({required UserService userService})
      : _userService = userService;

  Future<void> registerUser(String email, String password) async {
    try {
      error = null;
      success = false;
      notifyListeners();
      final user = await _userService.register(email, password);

      if (user != null) {
        //Sucesso
        success = true;
      } else {
        //Erro
        error = 'Erro ao Cadastrar usuário';
      }
    } on AuthException catch (e) {
      error = e.message;
    } finally {
      notifyListeners();
    }
  }
}
