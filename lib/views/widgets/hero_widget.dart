import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Hero(
          tag: 'Hero1',
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(20.0),
            child: Image.asset('assets/images/steezy.png', 
            color: Colors.purple[200],
            colorBlendMode: BlendMode.darken,
            ),
          ),
        ),
        Text(title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 40.0,
          letterSpacing: 20.0,
        ),
        )
      ],
    );
  }
}
