import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify_clone_app/data/models/auth/create_user_req.dart';

abstract class AuthFirebaseService {

  Future<Either> signup(CreateUserReq createUserReq);

  Future<void> signin();

}

class AuthFirebaseServiceImpl extends AuthFirebaseService {

  @override
  Future<void> signin() {
    // TODO: implement signin
    throw UnimplementedError();
  }

  @override
  Future<Either> signup(CreateUserReq createUserReq) async{
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