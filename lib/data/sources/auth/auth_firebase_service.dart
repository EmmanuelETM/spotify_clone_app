import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify_clone_app/data/models/auth/create_user_req.dart';
import 'package:spotify_clone_app/data/models/auth/sign_in_user_req.dart';

abstract class AuthFirebaseService {

  Future<Either> signUp(CreateUserReq createUserReq);

  Future<Either> signIn(SignInUserReq signInUserReq);

}

class AuthFirebaseServiceImpl extends AuthFirebaseService {

  @override
  Future<Either> signIn(SignInUserReq signInUserReq) async {
   try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: signInUserReq.email, 
        password:  signInUserReq.password,
      );

      return const Right('Sign In was succesful!');
    } on FirebaseAuthException catch(e) {

      String message  = '';

      if(e.code == 'invalid-email') {
        message = 'No user found for that email';
      } else if(e.code == 'invalid-credential') {
        message = 'Invalid credentials, verify and try again';
      } 

      return Left(message);
    }
  }

  @override
  Future<Either> signUp(CreateUserReq createUserReq) async{
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: createUserReq.email, 
        password: createUserReq.password,
      );

      return const Right('Sign Up was succesful!');
    } on FirebaseAuthException catch(e) {

      String message  = '';

      if(e.code == 'weak-password') {
        message = 'The password provided is too weak';
      } else if(e.code == 'email-already-in-use') {
        message = 'An account already exist with that email';
      } 

      return Left(message);
    }
  }
  
}