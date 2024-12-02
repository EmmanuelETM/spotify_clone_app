import 'package:get_it/get_it.dart';
import 'package:spotify_clone_app/data/repository/auth/auth_repo_impl.dart';
import 'package:spotify_clone_app/data/sources/auth/auth_firebase_service.dart';
import 'package:spotify_clone_app/domain/repository/auth/auth.dart';
import 'package:spotify_clone_app/domain/useCases/auth/signup.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {

  sl.registerSingleton<AuthFirebaseService>(
    AuthFirebaseServiceImpl(),
  );

  sl.registerSingleton<AuthRepo>(
    AuthRepoImpl(),
  );

    sl.registerSingleton<SignUpUseCase>(
    SignUpUseCase(),
  );

}