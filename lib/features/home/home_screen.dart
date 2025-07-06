import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            width: 500,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Text('Home Screen'),
                Text('Home Screen'),
                Text('Home Screen'),
                Text('Home Screen'),
                Text('Home Screen'),
                Text('Home Screen'),
                Text('Home Screen'),
                Text('Home Screen'),
                Text('Home Screen'),
                Text('Home Screen'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
