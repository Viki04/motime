import 'package:firebase_auth/firebase_auth.dart';

class FirebaseUtils{
  static FirebaseUser user;

  static Future<String> firebaseHandler(String method,String email,String password) async{
    try{
      if(method == "Register"){
        user = await getInstance().createUserWithEmailAndPassword(email:email, password:password);
        print('Register ....');
        print(user);
        String idToken = user.uid;
        return "UID: $idToken";
      }
      if (method == "Login"){
        print('Login ....');
        user = await getInstance().signInWithEmailAndPassword(email: email, password: password);
        String idToken = await user.getIdToken();
        return "TOKEN: $idToken";
      }

    }
    catch(e){
      return "ERROR: ${e.toString()}";
    }
  }

  static FirebaseAuth getInstance(){
    return FirebaseAuth.instance;
  }

}
