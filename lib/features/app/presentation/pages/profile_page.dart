import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String _name = "Hieu Dep Try";
  String _email = "@example.com";
  String _bio = "description about yourself go brrrr";
  String _imageUrl = "https://placehold.it/200x200";

  @override
  Widget build(BuildContext context) {
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
        ],
      ),
    );
  }
}