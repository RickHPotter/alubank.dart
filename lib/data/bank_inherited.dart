import 'package:flutter/material.dart';
import 'dart:developer';

import '../models/bank_model.dart';

class BankInherited extends InheritedWidget {
  BankInherited({super.key, required Widget child}) : super(child: child);

    final BankModel values = BankModel();

  static BankInherited of(BuildContext context) {
    final BankInherited? result = context.dependOnInheritedWidgetOfExactType<BankInherited>();
    assert(result != null, 'No BankInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(BankInherited oldWidget) {
    log('updateShouldNotify: ${oldWidget.values.points}');
    return values.points != oldWidget.values.points;
  }
}