import 'package:spotify_clone_app/data/models/auth/create_user_req.dart';
import 'package:spotify_clone_app/data/sources/auth/auth_firebase_service.dart';
import 'package:spotify_clone_app/domain/repository/auth/auth.dart';
import 'package:spotify_clone_app/service_locator.dart';

class AuthRepoImpl extends AuthRepo {

  

  @override
  Future<void> signin() {
    // TODO: implement signin
    throw UnimplementedError();
  }

  @override
  Future<void> signup(CreateUserReq createUserReq) async {
    await sl<AuthFirebaseService>().signup(createUserReq);
  }

}