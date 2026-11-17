import 'package:authproject/Model/auth_model.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  @override
  final String label;
  final IconData icon;
  final bool isobscure;
  final TextEditingController controller;
  final String? Function(String?) validator;

  const CustomTextFormField({
    super.key,
    required this.label,
    required this.icon,
    this.isobscure = false,
    required this.controller,
    required this.validator,
  });

  Widget build(BuildContext context) {
    return Container(
      width: 400,
      child: TextFormField(
        controller: controller,
        validator: validator,
        obscureText: isobscure,
        decoration: InputDecoration(prefixIcon: Icon(icon), label: Text(label)),
      ),
    );
  }
}
