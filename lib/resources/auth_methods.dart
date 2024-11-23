import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:meeting_app/utils/utils.dart';

class AuthMethods {
  //to get the instance of the firebase
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Stream<User?> get authChanges => _auth.authStateChanges();

  Future<bool> signInWithGoogle(BuildContext context) async {
    bool res = false;
    try {
      //step1 signin the user
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      //step2 authenticate the user
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;
      //step 3 once the authenticator verifies the authenticity then it provides the credentials
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      UserCredential userCredential =
          await _auth.signInWithCredential(credential);

      User? user = userCredential.user;

      if (user != null) {
        if (userCredential.additionalUserInfo!.isNewUser) {
          _firestore.collection('users').doc(user.uid).set({
            'username': user.displayName,
            'uid': user.uid,
            'profilePhoto': user.photoURL,
          });
        }
        res = true;
      }
    } on FirebaseAuthException catch (e) {
      // ignore: use_build_context_synchronously
      showSnackBar(context, e.message!);
      res = false;
    }
    return res;
  }
}
