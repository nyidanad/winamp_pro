import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:winamp_pro/data/models/auth/create_user_req.dart';

abstract class AuthFirebaseService {
  Future<Either> signup(CreateUserReq createUserReq);
  Future<void> signin();
}

class AuthFirebaseServiceImpl extends AuthFirebaseService {
  @override
  Future<void> signin() {
    // TODO: implement signin
    throw UnimplementedError();
  }

  @override
  Future<Either> signup(CreateUserReq createUserReq) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: createUserReq.email, 
        password: createUserReq.password
      );

      return const Right('Sign up was successful.');

    } on FirebaseAuthException catch(e) {
      String message = '';

      if(e.code == 'weak-password') {
        message = 'The provided password is too weak!';
      }
      else if (e.code == 'email-already-in-use') {
        message = 'This email already in use!';
      }

      return Left(message);
    }
  }

}