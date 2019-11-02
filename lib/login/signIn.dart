
import 'package:flutter/material.dart';
import 'package:login/login/auth.dart';

class SignIn extends StatefulWidget {
  SignIn({Key key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        elevation: 0,
        backgroundColor: Colors.amberAccent,
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
          child: FlatButton(
            color: Colors.amber,
            textColor: Colors.white,
        child: Text("SignAnomo"),
        onPressed: ()async {
         dynamic result = await _authService.signAnon();
         if (result == null) {
           print("error signin");
         } else {
           print("Signed");
           print(result.uid);
         }
        },
      )),
    );
  }
}
