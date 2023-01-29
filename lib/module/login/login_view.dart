import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Login View - (${Get.parameters['id']} - ${Get.parameters['name']})'),
      ),
      body: Container(),
    );
  }
}
