import 'package:authproject/Model/auth_model.dart';
import 'package:authproject/Services/auth_service.dart';
import 'package:flutter/foundation.dart';

class AuthProvider extends ChangeNotifier {
  Auth? model;

  Future<void> request({
    required String Name,
    required String Email,
    required String Password,
    required String Phone,
  }) async {
    model = await AuthService.SignUp(
      Name: Name,
      Email: Email,
      Password: Password,
      Phone: Phone,
    );
  }
}
