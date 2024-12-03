import 'package:dartz/dartz.dart';
import 'package:spotify_clone_app/core/usecase/usecase.dart';
import 'package:spotify_clone_app/data/models/auth/sign_in_user_req.dart';
import 'package:spotify_clone_app/domain/repository/auth/auth.dart';
import 'package:spotify_clone_app/service_locator.dart';


class SignInUseCase implements UseCase<Either, SignInUserReq> {
  @override
  Future<Either> call({SignInUserReq ? params}) async {
    return sl<AuthRepo>().signIn(params!);
  }
}