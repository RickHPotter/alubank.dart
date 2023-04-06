import 'package:alubank/data/bank_http.dart';
import 'package:flutter/material.dart';

import 'data/bank_inherited.dart'; 
import '../theme/purple_theme.dart';
import 'package:alubank/screens/home.dart';

void main() {
  runApp(const AluBank());
}

class AluBank extends StatelessWidget {
  const AluBank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Alubank',
      theme: purpleTheme,
      home: BankInherited(child: HomeScreen(api: BankHttp().euroToReal(),)),
    );
  }
}
