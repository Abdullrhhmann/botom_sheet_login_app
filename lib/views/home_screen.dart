import 'package:botom_sheet_login_app/widgets/Login_bottom_sheet.dart';
import 'package:botom_sheet_login_app/widgets/register_bottom_sheet.dart';
import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Bar"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context, builder: (ctx) => LoginBottomSheet());
                },
                child: const Text("Login")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (ctx) => const RegisterBottomSheet());
                },
                child: const Text("Register")),
          ],
        ),
      ),
    );
  }
}
