import 'package:flutter/material.dart';
import 'package:flutter_canvas/data/notifiers.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedpageNotifier,
      builder: (context, selectedpage, child) {
        return NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
          ],
          selectedIndex: selectedpage,
          onDestinationSelected: (value) {
            selectedpageNotifier.value = value;
          },
        );
      },
    );
  }
}
