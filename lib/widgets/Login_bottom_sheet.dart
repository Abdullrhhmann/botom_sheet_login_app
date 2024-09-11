import 'package:botom_sheet_login_app/controllers/user_controller.dart';
import 'package:flutter/material.dart';

class LoginBottomSheet extends StatefulWidget {
  const LoginBottomSheet({super.key});

  @override
  State<LoginBottomSheet> createState() => _LoginBottomSheetState();
}

class _LoginBottomSheetState extends State<LoginBottomSheet> {
  final _formKey = GlobalKey<FormState>();

  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();

  final _userController = userController();

  void _submit() {
    if (_formKey.currentState!.validate()) {
      final user = _userController.createUser(
          _usernameController.text, _passwordController.text);
      print("login ${user.username}");
    } else {
      print("login failed");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                  decoration: const InputDecoration(label: Text("username")),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "username cannot be empty";
                    } else {
                      return null;
                    }
                  }),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                  decoration: const InputDecoration(label: Text("password")),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "password cannot be empty";
                    } else {
                      return null;
                    }
                  }),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    _submit();
                  },
                  child: const Text("Login")),
            ],
          )),
    );
  }
}
