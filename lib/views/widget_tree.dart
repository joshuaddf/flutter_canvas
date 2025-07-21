import 'package:flutter/material.dart';
import 'package:flutter_canvas/data/notifiers.dart';
import 'package:flutter_canvas/views/pages/profile_page.dart';
import 'package:flutter_canvas/views/pages/home_page.dart';
import 'package:flutter_canvas/views/widgets/navbar_widget.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter canvas"),
      actions: [
        IconButton(onPressed: () {
          isDarkmodeNotifier.value = !isDarkmodeNotifier.value;
        }, icon: ValueListenableBuilder(
          valueListenable: isDarkmodeNotifier,
          builder: (context, isDarkmode, child) {
            return Icon( isDarkmode ? Icons.light_mode : Icons.dark_mode);
          }
        ))
      ],
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedpageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
