import 'package:flutter/material.dart';

class MonthlyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0, bottom: 30.0),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        width: double.infinity,
        height: 120.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: const Color(0xffF5F0E6),

        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Monthly",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0
                  ),
                ),
                const Text(
                  "Coffee",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0
                  ),
                ),
                Spacer(),
                RichText(
                  text:const TextSpan(
                      text: "€12.9",
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.orangeAccent
                      ),
                      children: [
                        TextSpan(
                            text: "/ monthly",
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.grey
                            )
                        )
                      ]
                  ),
                )
              ],
            ),
            const Positioned(
              right: 0,
              top: -40,
              child: Image(
                  image:AssetImage(
                      "assets/box.png"
                  )
              ),
            )
          ],
          clipBehavior: Clip.none,
        ),
      ),
    );
  }
}
