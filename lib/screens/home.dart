import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:expense_manager/providers/manager_provider.dart';
import 'package:expense_manager/custom_widgets/balance.dart';
import 'package:expense_manager/custom_widgets/concept_view.dart';
import 'package:expense_manager/model/concept.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [

          Balance(),
          
          Flexible (child: Consumer<ConceptProvider>(
            builder: (((context, obj, child) {
              List<Concept> concepts = obj.concepts;
              return ListView.builder(
                itemCount: concepts.length,
                itemBuilder: (((context, index) {
                  Concept concept = concepts[index];
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15,),
                    child: ConceptView(
                        title: concept.title,
                        createdAt: concept.createdAt,
                        isIncome: concept.isIncome,
                        amount: concept.amount),
                  );
                })),
              );
            })),
          ))
        ],
      )),
    );
  }
}
