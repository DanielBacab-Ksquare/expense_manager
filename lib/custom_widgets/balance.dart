import 'package:flutter/material.dart';
import 'package:expense_manager/constants/app_string.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 280,
        width: double.infinity,
        color: Color(0xff5ebd93),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppString.balance,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "\$ 3800 ${AppString.currency}",
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 35,
            ),
            SizedBox(
              width: 100,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white)),
                  onPressed: () {
                    //Here goes the jump to the add concept
                  },
                  child: Text(
                    AppString.create,
                    style: TextStyle(color: Color(0xff5ebd93)),
                  )),
            )
          ],
        ));
  }
}
