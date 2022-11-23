import 'package:flutter_test/flutter_test.dart';
import 'package:expense_manager/providers/manager_provider.dart';
import 'package:intl/intl.dart';

void main() {
  late ConceptProvider conceptProvider;
  setUp(() {
    conceptProvider = ConceptProvider();
  });
  group("Expense concept List", () {
    test("Add New Task", () {
      conceptProvider.addConcept("iPhone 12", 850.49,"new",false,DateFormat('d-M-y hh:mm aaa').format(DateTime.now()));
      expect(conceptProvider.getConceptCount, 1);
    });
  });
}