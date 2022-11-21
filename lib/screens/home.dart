import 'package:flutter/material.dart';
import 'package:expense_manager/custom_widgets/balance.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(children: [
          Welcome(),
          
        ],)
        
        ),




    );
  }
}