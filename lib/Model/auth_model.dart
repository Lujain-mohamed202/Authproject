class Auth {
  String message;
  bool status;
  UserModel userModel;

  Auth({required this.message, required this.status, required this.userModel});

  factory Auth.fromJson(Map json) {
    return Auth(
      message: json["message"],
      status: json["status"],
      userModel: UserModel.fromMap(json["user"]),
    );
  }
}

class UserModel {
  int Id;
  String name;
  String email;
  String password;
  String phone;

  UserModel({
    required this.Id,
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
  });

  factory UserModel.fromMap(Map userdata) {
    return UserModel(
      Id: userdata["id"],
      name: userdata["name"],
      email: userdata["email"],
      password: userdata["password"],
      phone: userdata["phone"],
    );
  }
}
