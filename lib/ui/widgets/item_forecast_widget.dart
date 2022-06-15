

import 'package:flutter/material.dart';

class ItemForecastWidget extends StatelessWidget {
  const ItemForecastWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(right: 16.0),
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.09),
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 10,
              offset: const Offset(5, 5),
            ),
          ]
      ),
      child: Column(
        children: [
          Text(
            "9:00 AM",
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
          const SizedBox(
            height: 6.0,
          ),
          Image.asset(
            'assets/images/cloud.png',
            height: 38.0,
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            "29°",
            style: TextStyle(
              color: Colors.white,
              fontSize: 26.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
