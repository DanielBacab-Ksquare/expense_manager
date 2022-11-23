import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:expense_manager/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('end-to-end test', () {
    testWidgets('add_task', (tester) async {
      app.main();
      await tester.pumpAndSettle();
      // Clicking Fab Button & Navigate to Add Task Screen
      final Finder fab = find.byKey(const Key('createButton'));
      await tester.tap(fab);
      await tester.pumpAndSettle();

      // Adding new Task
      await tester.enterText(
          find.byKey(const Key('titleTextField')), 'iPhone 11');

       await tester.enterText(
          find.byKey(const Key('amountTextField')), '599.99');

      await tester.enterText(
          find.byKey(const Key('descTextField')), 'Discuss about the meeting');
      final Finder addTaskButton = find.byKey(const Key('addTaskButton'));
      await tester.tap(addTaskButton);

       expect(find.text('iPhone 11'), findsOneWidget);
      
    });
  });
}