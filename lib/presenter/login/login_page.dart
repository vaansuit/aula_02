import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController loginController =
      TextEditingController(); //pra nao duplicar os dois valores, quando for especifico nao precisa tipar, pode colocar apenas o final(impossibilita mudar o valor depois)
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Container(
        child: Column(
          children: [
            const Icon(
              Icons.person,
              size: 50,
            ),
            TextField(
              controller: loginController,
              decoration: const InputDecoration(
                border: InputBorder.none,
                labelText: 'coloque seu login,',
                hintText: 'essa hint vai sumir ao escrever!',
              ),
            ),
            TextField(
              controller: passController,
              decoration: const InputDecoration(
                labelText: 'coloque sua senha',
                hintText: 'essa hint vai sumir ao escrever!',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                print(loginController.text);
                print(passController.text);
              },
              child: const Text(
                'Login',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
