import 'package:flutter/material.dart';

import 'check_in_page.dart';
import 'check_out_page.dart';
import 'login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/login': (context) => LoginPage(),
        '/WorkCheckingPage': (context) => WorkCheckingPage(),
        '/CheckingPage': (context) => CheckingPage(),

      },
    );
  }
}
