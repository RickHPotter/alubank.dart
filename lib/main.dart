import 'package:alubank/theme/theme.dart';
import 'package:flutter/material.dart';

import 'package:alubank/screens/home.dart';

void main() {
  runApp(const AluBank());
}

class AluBank extends StatelessWidget {
  const AluBank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ALU BANK',
      theme: myTheme,
      home: const HomeScreen()
    );
  }
}
