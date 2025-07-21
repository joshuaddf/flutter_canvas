import 'package:flutter/material.dart';
import 'package:flutter_canvas/data/notifiers.dart';
import 'package:flutter_canvas/views/widget_tree.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: isDarkmodeNotifier, builder: 
    (context, isDarkmode, child) {
      return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: isDarkmode ? Brightness.dark : Brightness.light,
        ),
      ),
      home: WidgetTree(),
    );
    },
    );
  }
}
