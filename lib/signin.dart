import 'package:flutter/material.dart';

class NextScreen extends StatelessWidget {
  int _selectedDestination = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          // title: Text(''),
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              icon: Icon(Icons.arrow_back))
          // title: Text(Globals.TEXT_LOGIN),
          ),
      endDrawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                'Filters',
                //style: textTheme.headline6,
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.circle),
              title: Text('OffCamous'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.circle),
              title: Text('OnCampus'),
            )
          ],
        ),
      ),
    );
  }
}
