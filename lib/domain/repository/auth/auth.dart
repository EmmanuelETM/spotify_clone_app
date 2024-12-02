import 'package:dartz/dartz.dart';
import 'package:spotify_clone_app/data/models/auth/create_user_req.dart';

abstract class AuthRepo {

  Future<Either> signup(CreateUserReq createUserReq);

  Future<void> signin();

}