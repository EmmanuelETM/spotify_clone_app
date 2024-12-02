import 'package:dartz/dartz.dart';
import 'package:spotify_clone_app/core/usecase/usecase.dart';
import 'package:spotify_clone_app/data/models/auth/create_user_req.dart';
import 'package:spotify_clone_app/domain/repository/auth/auth.dart';
import 'package:spotify_clone_app/service_locator.dart';


class SignUpUseCase implements UseCase<Either, CreateUserReq> {

  @override
  Future<Either> call({CreateUserReq ? params}) async {
    return sl<AuthRepo>().signup(params!);
  }



  
}