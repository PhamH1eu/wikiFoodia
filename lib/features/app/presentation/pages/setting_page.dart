import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../user_auth/firebase_auth_implementation/google_auth_services.dart';
import 'login_page.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  String _name = "Hieu Dep Try";
  String _email = "@example.com";
  String _bio = "description about yourself go brrrr";
  String _imageUrl = "https://placehold.it/200x200";

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<GoogleSignInProvider>(context, listen: false);

    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(_imageUrl),
            ),
            title: Text(_name),
            subtitle: Text(_email),
          ),
          Divider(
            height: 20,
          ),
          ListTile(
            title: Text("Bio"),
            subtitle: Text(_bio),
          ),
          Divider(
            height: 20,
          ),
          ListTile(
            title: Text("Social Media"),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(Icons.facebook),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Divider(
            height: 20,
          ),
          ListTile(
            title: Text("Edit Profile"),
            leading: Icon(Icons.edit),
            onTap: () {
              // TODO: Implement profile editing
            },
          ),
          Divider(),
          ListTile(
            title: Text("Rate us!"),
            leading: Icon(Icons.star),
            onTap: () {
              // TODO: Implement
            },
          ),
          Divider(),
          ListTile(
            title: Text("Help Center"),
            leading: Icon(Icons.help_center),
            onTap: () {
              // TODO: Implement
            },
          ),
          Divider(),
          ListTile(
            title: Text("Terms and Conditions"),
            leading: Icon(Icons.info),
            onTap: () {
              // TODO: Implement
            },
          ),
          Divider(
            height: 50,
          ),
          ListTile(
            title: Text("Current version: 0.1"),
            onTap: () {

            },
          ),
          Divider(),
          GestureDetector(
            onTap: () {
              provider.googleLogout();
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ),
                    (route) => false,
              );
            },
            child: Container(
              height: 45,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                height: 45,
                width: 100,
                decoration: BoxDecoration(
                  color: Color(0xfff97350),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(
                  child: Center(
                    child: Text(
                      "Sign out",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  onPressed: () {
                    provider.googleLogout();
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                          (route) => false,
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}