import 'package:flutter/material.dart';
import 'package:wikifoodia/features/app/presentation/pages/setting_page/setting_page.dart';


class EditProfilePage extends StatefulWidget {
  final String fname;
  final String lname;
  final String email;
  final String imageUrl;

  const EditProfilePage({
    Key? key,
    required this.fname,
    required this.lname,
    required this.email,
    required this.imageUrl,
  }) : super(key: key);

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  TextEditingController _fnameController = TextEditingController();
  TextEditingController _lnameController = TextEditingController();
  void _saveChanges() {
      String newlName = _lnameController.text;
      String newfName = _fnameController.text;
      updateProfile(newfName,newlName);

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Profile changes saved successfully.'),
          duration: Duration(seconds: 2),
        ),
      );
  }

  void _changeProfilePicture() {
    // TODO: Implement logic to change the profile picture
    // You might want to use an image picker or some other mechanism here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
        backgroundColor:Color(0xfff97350),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(widget.imageUrl),
              ),
            ),
            SizedBox(height: 16),
            Text('Email: ${widget.email}'),
            SizedBox(height: 16),
            TextFormField(
              controller: _fnameController,
              decoration: InputDecoration(labelText: 'First Name'),
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: _lnameController,
              decoration: InputDecoration(labelText: 'Last Name'),
            ),
            SizedBox(height: 32),
            Center(
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.9,
                margin: EdgeInsets.symmetric(horizontal: (MediaQuery.of(context).size.width * 0.1) / 2),
                decoration: BoxDecoration(
                  color: Color(0xfff97350),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(
                  onPressed: () {
                    _saveChanges();
                    Navigator.of(context).pop();
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => SettingPage(),
                      ),
                    );
                  },
                  child: Center(
                    child: Text(
                      "Save",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

