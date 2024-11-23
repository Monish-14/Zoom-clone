import "package:firebase_core/firebase_core.dart";
import "package:flutter/material.dart";
import "package:meeting_app/screens/home_screen.dart";
import "package:meeting_app/screens/login_screen.dart";
import "package:meeting_app/utils/colors.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: "AIzaSyA6P8A6-OwhkV-EM3CpMElSGghJj0MPRls",
    appId: "1:857476693428:android:3ef1ac86c32cd1575b86e1",
    messagingSenderId: "857476693428",
    projectId: "my-cloned-pages",
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Lets meet!",
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      routes: {
        "/login": (context) => const LoginScreen(),
        "/home": (context) => const HomeScreen(),
        //"/newmeet":(context) =>
      },
      home: const LoginScreen(),
    );
  }
}
