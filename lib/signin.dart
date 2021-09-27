import 'package:flutter/material.dart';

class NextScreen extends StatelessWidget {
  int _selectedDestination = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hello'),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Header',
                //style: textTheme.headline6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
