import 'package:flutter/material.dart';
import 'package:flutter_canvas/data/constants.dart';
import 'package:flutter_canvas/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          HeroWidget(title: "Flutter canvas",),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            width: double.infinity,
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Card", 
                    style: JTextStyle.titlePurpleStyle,
                    ),
                    Text('This is the card description',
                    style: JTextStyle.descriptionStyle,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
