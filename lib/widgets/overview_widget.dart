import 'package:flutter/material.dart';

class OverViewWidget extends StatelessWidget {

  String asset;
  String value;
  String detail_name;

  OverViewWidget({required this.asset, required this.value,required this.detail_name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
      child: Row(
        children: [
          Container(
            height: 40.0,
            width: 40.0,
            child: Image.asset(asset),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Color(0xffFFF4E1),
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                value,
                style:const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0
                ),
              ),
              Text(
                detail_name,
                style: const TextStyle(
                    //fontWeight: FontWeight.bold,
                    fontSize: 10.0,
                    color: Colors.grey
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
