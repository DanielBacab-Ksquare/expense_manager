import 'package:flutter/material.dart';
import 'package:expense_manager/model/concept.dart';

class ConceptProvider extends ChangeNotifier {
  List<Concept> concepts = [];
  //int dummyNumber = 0;

  void addTask(title, amount, desc, isIncome) {
    Concept concept = Concept(
        title: title, amount: amount, description: desc, isIncome: isIncome);
    concepts.add(concept);
    notifyListeners();
  }

  get getTaskCount => concepts.length;

  num getBalance() {
    num total = 0;
    concepts.forEach((element) {
      if (element.isIncome) {
        total = total + element.amount;
      } else {
        total = total - element.amount;
      }
    });
    return total;
  }
}
