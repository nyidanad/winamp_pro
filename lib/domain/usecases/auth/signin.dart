import 'package:dartz/dartz.dart';
import 'package:winamp_pro/core/usecases/usecase.dart';
import 'package:winamp_pro/data/models/auth/signin_user_req.dart';
import 'package:winamp_pro/domain/repository/auth/auth.dart';
import 'package:winamp_pro/service_locator.dart';

class SigninUseCase implements UseCase<Either, SigninUserReq> {
  @override
  Future<Either> call({SigninUserReq ? params}) {
    return sl<AuthRepository>().signin(params!);
  }
  
}