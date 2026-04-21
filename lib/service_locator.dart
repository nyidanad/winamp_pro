import 'package:get_it/get_it.dart';
import 'package:winamp_pro/data/repository/auth/auth_repository_impl.dart';
import 'package:winamp_pro/data/sources/auth/auth_firebase_service.dart';
import 'package:winamp_pro/domain/repository/auth/auth.dart';
import 'package:winamp_pro/domain/usecases/auth/signup.dart';

final sl = GetIt.instance;

Future<void> initilizeDependencies() async {

  sl.registerSingleton<AuthFirebaseService>(
    AuthFirebaseServiceImpl()
  );

  sl.registerSingleton<AuthRepository>(
    AuthRepositoryImpl()
  );

  sl.registerSingleton<SignupUseCase>(
    SignupUseCase()
  );
}