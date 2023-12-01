import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:wikifoodia/features/app/presentation/pages/FavoritePage/favorite_provider.dart';

import 'features/app/presentation/pages/AuthPages/login_page.dart';
import 'features/user_auth/firebase_auth_implementation/google_auth_services.dart';
import 'features/app/presentation/pages/home_page.dart';
import 'features/app/presentation/pages/AuthPages/sign_up_page.dart';
import 'features/app/presentation/pages/MainPage/main_page.dart';
import 'features/app/splash_screen/splash_screen.dart';

import 'firebase_options.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyAdLqdfCsREAdsaeUjx3IgvMnNKcw_CyrY",
        appId: "1:553263434467:android:16d9d4493616f0643893d6",
        messagingSenderId: "553263434467",
        projectId: "wikifoodia-1781b",
        // Your web Firebase config options
      ),
    );
  } else {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MultiProvider(
    providers: [
      ChangeNotifierProvider<FavoriteProvider>(
        create: (context) => FavoriteProvider(),
      ),
      ChangeNotifierProvider<GoogleSignInProvider>(
        create: (context) => GoogleSignInProvider(),
      ),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'wikiFoodia',
      routes: {
        '/': (context) => SplashScreen(
              // Here, you can decide whether to show the LoginPage or HomePage based on user authentication
              child: LoginPage(),
            ),
        '/login': (context) => LoginPage(),
        '/signUp': (context) => SignUpPage(),
        '/home': (context) => HomePage(),
        '/main': (context) => MainPage(),
      },
    ),
  );
}
