// ignore_for_file: public_member_api_docs, sort_constructors_first
class AuthException implements Exception {
  String message;

  AuthException({
    required this.message,
  });
}
