import 'package:flutter/material.dart';

class TransactionWidget extends StatelessWidget {
  const TransactionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          margin: const EdgeInsets.only(
            right: 20,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 247, 244, 244),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("02"),
              Text("OCT"),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("UPI/P2A/"),
            Text("02-08-2022"),
          ],
        ),
        const Spacer(),
        const Text(
          "₹ 7.00",
          style: TextStyle(
            color: Colors.green,
          ),
        )
      ],
    );
  }
}
