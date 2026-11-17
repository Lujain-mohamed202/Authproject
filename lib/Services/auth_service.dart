import 'package:authproject/Model/auth_model.dart';
import 'package:dio/dio.dart';

class AuthService {
  static Dio dio = Dio();

  static Future<Auth> SignUp({
    required String Name,
    required String Email,
    required String Password,
    required String Phone,
  }) async {
    Response response = await dio.post(
      "https://elsewedyteam.runasp.net/api/Register/AddUser",
      data: {
        "Name": Name,
        "Email": Email,

        "Phone": Phone,

        "Password": Password,
      },
    );
    return Auth.fromJson(response.data);
  }
}
