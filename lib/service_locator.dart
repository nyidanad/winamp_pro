import 'package:get_it/get_it.dart';
import 'package:winamp_pro/data/repository/auth/auth_repository_impl.dart';
import 'package:winamp_pro/data/repository/song/song_repository_impl.dart';
import 'package:winamp_pro/data/sources/auth/auth_firebase_service.dart';
import 'package:winamp_pro/data/sources/song/song_firebase_service.dart';
import 'package:winamp_pro/domain/repository/auth/auth.dart';
import 'package:winamp_pro/domain/repository/song/song.dart';
import 'package:winamp_pro/domain/usecases/auth/signin.dart';
import 'package:winamp_pro/domain/usecases/auth/signup.dart';
import 'package:winamp_pro/domain/usecases/song/get_news_songs.dart';
import 'package:winamp_pro/domain/usecases/song/get_pay_list.dart';

final sl = GetIt.instance;

Future<void> initilizeDependencies() async {

  sl.registerSingleton<AuthFirebaseService>(
    AuthFirebaseServiceImpl()
  );

  sl.registerSingleton<SongFirebaseService>(
    SongFirebaseServiceImpl()
  );

  sl.registerSingleton<AuthRepository>(
    AuthRepositoryImpl()
  );

  sl.registerSingleton<SongsRepository>(
    SongRepositoryImpl()
  );

  sl.registerSingleton<SignupUseCase>(
    SignupUseCase()
  );

  sl.registerSingleton<SigninUseCase>(
    SigninUseCase()
  );

  sl.registerSingleton<GetNewsSongsUseCase>(
    GetNewsSongsUseCase()
  );

  sl.registerSingleton<GetPlayListUseCase>(
    GetPlayListUseCase()
  );
}