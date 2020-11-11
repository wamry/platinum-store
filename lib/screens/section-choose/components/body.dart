import 'package:flutter/material.dart';
import '../../home/home_screen.dart';

final List<String> availableSections = ['women', 'men'];

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(40, 300.0, 40, 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildSection(
            context,
            'women',
            () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(section: 'women'),
              ),
            ),
          ),
          SizedBox(height: 30),
          buildSection(
            context,
            'men',
            () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(section: 'women'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildSection(BuildContext context, String section, Function onTap) {
  return GestureDetector(
    child: Text(
      ' ' + section.toUpperCase() + ' ',
      style: TextStyle(
        color: Colors.white60,
        fontWeight: FontWeight.bold,
        backgroundColor: Colors.black,
        fontSize: 40,
      ),
    ),
    onTap: onTap,
  );
}
