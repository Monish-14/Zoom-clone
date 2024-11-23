import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
//import "package:meeting_app/resources/auth_methods.dart";
import "package:meeting_app/widgets/custom_button.dart";

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //final AuthMethods _authMethods = AuthMethods();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //title
          Text("Start or join a meeting",
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )),

          //image
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
            child: Image.asset(
              'assets/onboarding.jpg',
            ),
          ),

          //button
          CustomButton(
              text: "Get Started",
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              } //async {
              //   bool res = await _authMethods.signInWithGoogle(context);
              //   if (res) {
              //     // ignore: use_build_context_synchronously
              //     Navigator.pushNamed(context, '/home');
              //   }
              // },
              ),
        ],
      ),
    );
  }
}
