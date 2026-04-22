import 'package:dartz/dartz.dart';
import 'package:winamp_pro/core/usecases/usecase.dart';
import 'package:winamp_pro/domain/repository/song/song.dart';
import 'package:winamp_pro/service_locator.dart';

class GetNewsSongsUseCase implements UseCase<Either, dynamic> {
  @override
  Future<Either> call({params}) async {
    return await sl<SongsRepository>().getNewsSongs();
  }
}