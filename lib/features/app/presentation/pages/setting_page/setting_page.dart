import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wikifoodia/features/app/presentation/pages/setting_page/terms_condition_page.dart';

import '../../../../user_auth/firebase_auth_implementation/google_auth_services.dart';
import '../AuthPages/login_page.dart';
import 'edit_profile_page.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

void updateProfile(String newfName, String newlName) {
  _SettingPageState()._fName = newfName;
  _SettingPageState()._lName = newlName;
  print(newfName);
  // Notify listeners about the change
}

class _SettingPageState extends State<SettingPage> {
  String _email = "@example.com";
  String _imageUrl = "assets/images/avatar.jpg";
  String _fName = "Thiện";
  String _lName = "Ma Thanh";

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<GoogleSignInProvider>(context, listen: false);

    return Scaffold(
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditProfilePage(
                    fname: _fName,
                    lname: _lName,
                    email: _email,
                    imageUrl: _imageUrl,
                  ),
                ),
              );
            },
            child: Container(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(_imageUrl),
                ),
                title: Text(_fName + " " + _lName),
                subtitle: Text(_email),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // TODO: Implement action for "Rate us!"
            },
            child: ListTile(
              title: Text("Rate us!"),
              leading: Icon(Icons.star),
            ),
          ),
          Divider(),
          GestureDetector(
            onTap: () {
              // TODO: Implement action for "Help Center"
            },
            child: ListTile(
              title: Text("Help Center"),
              leading: Icon(Icons.help_center),
            ),
          ),
          Divider(),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TermsAndConditionsPage()
                ),
              );
            },
            child: ListTile(
              title: Text("Terms and Conditions"),
              leading: Icon(Icons.info),
            ),
          ),
          Divider(
            height: 50,
          ),
          ListTile(
            title: Text("Current version: 0.1"),
            onTap: () {
              // TODO: Implement action for the version
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
