// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../../app/flash_message.dart';
import '../../firebase_auth_implementation/firebase_auth_services.dart';
import '../../firebase_auth_implementation/google_auth_services.dart';
import '../widgets/form_container_widget.dart';

import 'sign_up_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FirebaseAuthService _auth = FirebaseAuthService();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 80,
                        ),
                        Image.asset('assets/images/pho.png', height: 200),
                        Text('Login',
                            style: TextStyle(
                                fontSize: 27, fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 30,
                        ),
                        FormContainerWidget(
                          controller: _emailController,
                          hintText: "Email",
                          isPasswordField: false,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        FormContainerWidget(
                          controller: _passwordController,
                          hintText: "Password",
                          isPasswordField: true,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: _signIn,
                          child: Container(
                            width: double.infinity,
                            height: 45,
                            decoration: BoxDecoration(
                              color: Color(0xfff97350),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 40),
                        Row(children: <Widget>[
                          Expanded(
                            child: Container(
                                margin: const EdgeInsets.only(
                                    left: 10.0, right: 20.0),
                                child: Divider(
                                  color: Colors.black,
                                  height: 36,
                                )),
                          ),
                          Text(
                            "OR",
                            style: TextStyle(fontSize: 20),
                          ),
                          Expanded(
                            child: Container(
                                margin: const EdgeInsets.only(
                                    left: 20.0, right: 10.0),
                                child: Divider(
                                  color: Colors.black,
                                  height: 36,
                                )),
                          ),
                        ]),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.black,
                                minimumSize: Size(150, 50),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(8), // <-- Radius
                                ),
                              ),
                              icon: FaIcon(
                                FontAwesomeIcons.google,
                                color: Colors.red,
                              ),
                              label: Text('Sign in with Google'),
                              onPressed: () {
                                final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
                                provider.googleLogin().then((value) => Navigator.pushNamed(context, "/home"));
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account? "),
                            SizedBox(
                              height: 15,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) => SignUpPage())),
                                    (route) => false);
                              },
                              child: Text(
                                "Create now",
                                style: (TextStyle(
                                    color: Color(0xfff97350),
                                    fontWeight: FontWeight.bold)),
                              ),
                            )
                          ],
                        ),
                      ]),
                ),
              ],
            )),
      ),
    );
  }

  void _signIn() async {
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();

    if (email.isEmpty) {
      FlashMessage.showMySnackBar(context, "Email is required");
    } else if (password.isEmpty) {
      FlashMessage.showMySnackBar(context, "Password is required");
    } else {
      await _auth.signInWithEmailAndPassword(email, password);
      if (context.mounted) {
        if (FirebaseAuth.instance.currentUser != null) {
          Navigator.pushNamed(context, "/home");
        } else {
          FlashMessage.showMySnackBar(
              context, FirebaseAuthService.errorMessage);
        }
      }
    }
  }
}
