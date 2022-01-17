import 'package:flutter/material.dart';


class TitleWidget extends StatelessWidget {

  late String title;

  TitleWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                color: const Color(0xffE48B6C),
                borderRadius: BorderRadius.circular(10.0)
            ),
            height: 5,
            width: 20,
          ),
          const SizedBox(
            width: 10.0,
          ),
          Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0
            ),
          )
        ],
      ),
    );
  }
}
