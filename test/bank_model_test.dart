import 'package:alubank/models/bank_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('V', () {
    test("Bank Model Deposit should turn points into 10", () {
      final bank = BankModel();
      bank.deposit(10);
      expect(bank.points, 10);
    });

    test("Bank Model Transfer should turn points into 10", () {
      final bank = BankModel();
      bank.transfer(10);
      expect(bank.points, 10);
    });
  });
}
