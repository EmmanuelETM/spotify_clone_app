import 'package:dartz/dartz.dart';
import 'package:spotify_clone_app/data/models/auth/create_user_req.dart';
import 'package:spotify_clone_app/data/models/auth/sign_in_user_req.dart';

abstract class AuthRepo {

  Future<Either> signUp(CreateUserReq createUserReq);

  Future<Either> signIn(SignInUserReq signInUserReq);

}