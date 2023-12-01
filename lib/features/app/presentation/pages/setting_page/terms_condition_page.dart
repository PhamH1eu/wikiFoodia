import 'package:flutter/material.dart';

class TermsAndConditionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms and Conditions'),
        backgroundColor:Color(0xfff97350),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          Text(
            'Welcome to Your App!',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16.0),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit,'
                ' sed do eiusmod tempor incididunt ut labore et dolore'
                ' magna aliqua. Ut enim ad minim veniam, quis nostrud'
                ' exercitation ullamco laboris nisi ut aliquip ex ea'
                ' commodo consequat. Duis aute irure dolor in reprehenderit'
                ' in voluptate velit esse cillum dolore eu fugiat nulla'
                ' pariatur. Excepteur sint occaecat cupidatat non proident,'
                ' sunt in culpa qui officia deserunt mollit anim id est laborum',
            style: TextStyle(fontSize: 16.0),
          ),
          // Add more terms as needed
        ],
      ),
    );
  }
}
