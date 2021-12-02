import 'package:flutter/material.dart';

class AuthoricationPage extends StatelessWidget {
  const AuthoricationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "assets/back_temp.png",
            ),
          ),
        ),
      ),
    );
  }
}
