import 'package:flutter/material.dart';
import 'package:plants/core/assets/assets.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 120,
          width: 120,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(50),
            ),
            color: Color(0xff666666),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Pitaye',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'PREMIUM',
                style: TextStyle(color: Color(0xff96c16d), fontSize: 10),
              ),
              Text(
                '€4.5',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),

        // استخدام Positioned لوضع الصورة

        Positioned(
          right: 10,
          bottom: 0,
          child: CircleAvatar(
            radius: 18,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward,
                size: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
