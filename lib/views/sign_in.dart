import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextButton(
          onPressed: () async {
            await launch('https"://www.google.com');
          },
          child: Text("Go")),
    );
  }
}
