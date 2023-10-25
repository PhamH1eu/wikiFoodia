import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wikifoodia/features/user_auth/presentation/pages/login_page.dart';
import '../../firebase_auth_implementation/google_auth_services.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasData) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                          child: Text(
                        "Welcome Home bro!",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 19),
                      )),
                      SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          FirebaseAuth.instance.signOut();
                          Navigator.pushNamed(context, "/login");
                        },
                        child: Container(
                          height: 45,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                              height: 45,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(10)),
                              child: TextButton(
                                child: Center(
                                  child: Text(
                                    "Sign out",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                                onPressed: () {
                                  final provider =
                                      Provider.of<GoogleSignInProvider>(context,
                                          listen: false);
                                  provider.googleLogout();
                                },
                              )),
                        ),
                      )
                    ],
                  ),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("Something went wrong"),
                );
              } else {
                return LoginPage();
              }
            }));
  }
}
