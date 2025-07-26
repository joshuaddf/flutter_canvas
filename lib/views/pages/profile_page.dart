import 'package:flutter/material.dart';
import 'package:flutter_canvas/data/notifiers.dart';
import 'package:flutter_canvas/views/pages/welcome_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      duration: Duration(seconds: 1),
                      content: Text("This is the snackbar"),
                    ),
                  );
                },
                child: Text("Show snackbar"),
              ),
              SizedBox(
                height: 20.0,
                child: VerticalDivider(),
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Alert title"),
                        content: Text("Alert Content"),
                        actions: [
                          FilledButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("Close"),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text("Show snackbar"),
              ),
            ],
          ),
          ListTile(
            title: Text("Log out"),
            onTap: () {
              selectedpageNotifier.value = 0;
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return WelcomePage();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
