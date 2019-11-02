import 'package:firebase_auth/firebase_auth.dart';
import 'package:login/login/models/users.dart';

class AuthService {
  User _user(FirebaseUser user){
    return user != null ? User(uid: user.uid) : null ;
  }
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future signAnon()async{
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user =  result.user;
      return _user(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
