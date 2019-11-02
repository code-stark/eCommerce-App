import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import './home.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GoogleSignIn googleSignIn = GoogleSignIn();
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  SharedPreferences sharedPreferences;
  bool loading = false;
  bool isLodingin = false;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isSignIn();
  }

  void isSignIn() async {
    setState(() {
      loading = true;
    });

    sharedPreferences = await SharedPreferences.getInstance();
    isLodingin = await googleSignIn.isSignedIn();
    if (isLodingin == true) {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) => HomePage()));
      setState(() {
        loading = false;
      });
    }
  }

  Future <FirebaseUser> handleSignIn() async {
    sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      loading = true;
    });
    GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

   
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
