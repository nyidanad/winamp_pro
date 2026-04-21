import 'package:dartz/dartz.dart';
import 'package:winamp_pro/core/usecases/usecase.dart';
import 'package:winamp_pro/data/models/auth/create_user_req.dart';
import 'package:winamp_pro/domain/repository/auth/auth.dart';
import 'package:winamp_pro/service_locator.dart';

class SignupUseCase implements UseCase<Either, CreateUserReq> {
  @override
  Future<Either> call({CreateUserReq ? params}) {
    return sl<AuthRepository>().signup(params!);
  }
  
}