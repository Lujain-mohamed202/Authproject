import 'dart:nativewrappers/_internal/vm/lib/internal_patch.dart';

import 'package:authproject/Provider/auth_provider.dart';
import 'package:authproject/Widgets/custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Signup extends StatelessWidget {
  new({super.key});

  final name = TextEditingController();
  final password = TextEditingController();
  final email = TextEditingController();
  final phone = TextEditingController();

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final provider = context.read<AuthProvider>();
    return Form(
      child: Scaffold(
        key: formkey,
        appBar: AppBar(
          backgroundColor: Colors.pink,
          centerTitle: true,
          title: Text(
            "Sign Up",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: .center,
            crossAxisAlignment: .center,
            spacing: 20,
            children: [
              CustomTextFormField(
                label: "Name",
                icon: Icons.person,
                controller: name,
                validator: (value) {
                  if (value == null || value.isEmpty)
                    return "Please Enter Required Data";
                },
              ),

              CustomTextFormField(
                label: "Email",
                icon: Icons.email,
                controller: email,
                validator: (value) {
                  if (value == null || value.isEmpty)
                    return "Please Enter Required Data";
                },
              ),

              CustomTextFormField(
                isobscure: true,
                label: "Password",
                icon: Icons.lock,
                controller: password,
                validator: (value) {
                  if (value == null || value.isEmpty)
                    return "Please Enter Required Data";
                },
              ),

              CustomTextFormField(
                isobscure: true,
                label: "Phone",
                icon: Icons.phone,
                controller: phone,
                validator: (value) {
                  if (value == null || value.isEmpty)
                    return "Please Enter Required Data";
                },
              ),

              Container(
                width: 200,

                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(provider.model!.message)),
                    );
                    if (formkey.currentState!.validate()) {
                      provider.request(
                        Name: name.text,
                        Email: email.text,
                        Password: password.text,
                        Phone: phone.text,
                      );
                    }
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
