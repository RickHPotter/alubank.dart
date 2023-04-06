import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:alubank/components/card.dart';
import 'package:alubank/data/bank_inherited.dart';
import 'package:alubank/screens/home.dart';

import 'package:alubank/data/bank_http.mocks.dart';
import 'package:mockito/mockito.dart';

void main() {
  final MockBankHttp mockBankHttp = MockBankHttp();

  Widget materialApp() {
    return MaterialApp(
        home: BankInherited(
      child: HomeScreen(api: mockBankHttp.euroToReal()),
    ));
  }

  group('description', () {
    when(mockBankHttp.euroToReal()).thenAnswer((_) async => "5");

    testWidgets("My Widget has a text 'Outcome'.", (widgetTester) async {
      await widgetTester.pumpWidget(materialApp());
      expect(find.text("outcome"), findsOneWidget);
    });
    testWidgets("Finds a LinearProgressIndicator.", (widgetTester) async {
      await widgetTester.pumpWidget(materialApp());
      expect(find.byType(LinearProgressIndicator), findsOneWidget);
    });
    testWidgets("Finds an AccountStatus", (widgetTester) async {
      await widgetTester.pumpWidget(materialApp());
      expect(find.byKey(const Key("testKey")), findsOneWidget);
    });
    testWidgets("Fins 5 Box Cards.", (widgetTester) async {
      await widgetTester.pumpWidget(materialApp());
      expect(find.byWidgetPredicate((widget) => widget is BoxCard),
          findsNWidgets(5));
    });
    testWidgets("Deposit.onTap should update income to £ 10.0",
        (widgetTester) async {
      await widgetTester.pumpWidget(materialApp());
      await widgetTester.tap(find.text("Deposit"));
      await widgetTester.tap(find.text("income"));

      await widgetTester.pumpAndSettle();
      expect(find.text("£ 10.0"), findsOneWidget);
    });
    testWidgets("Testing MockBankHttp.euroToReal.", (widgetTester) async {
      await widgetTester.pumpWidget(materialApp());
      verify(mockBankHttp.euroToReal()).called(greaterThanOrEqualTo(1));
    });
  });
}
