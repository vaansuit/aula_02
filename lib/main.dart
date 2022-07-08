import 'package:aula_02/presenter/login/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'presenter/home/home_page.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mudando Estado',
      home: LoginPage(),
    ),
  );
}
