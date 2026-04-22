import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:winamp_pro/common/widgets/appbar/app_bar.dart';
import 'package:winamp_pro/common/widgets/button/basic_app_button.dart';
import 'package:winamp_pro/core/configs/assets/app_vectors.dart';
import 'package:winamp_pro/data/models/auth/create_user_req.dart';
import 'package:winamp_pro/domain/usecases/auth/signup.dart';
import 'package:winamp_pro/presentation/auth/pages/signin.dart';
import 'package:winamp_pro/presentation/home/pages/home.dart';
import 'package:winamp_pro/service_locator.dart';

class SignupPage extends StatelessWidget  {
  SignupPage({super.key});
  
  final TextEditingController _fullName = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _signinText(context),
      appBar: BasicAppbar(
        title: SvgPicture.asset(
          AppVectors.logo,
          width: 30,
          height: 30,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 50,
          horizontal: 40,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _registerText(),
            SizedBox(height: 50,),
            _fullNameField(context),
            SizedBox(height: 25,),
            _emailField(context),
            SizedBox(height: 25,),
            _passwordField(context),
            SizedBox(height: 50,),
            BasicAppButton(
              onPressed: () async {
                var res = await sl<SignupUseCase>().call(
                  params: CreateUserReq(
                    fullName: _fullName.text.toString(), 
                    email: _email.text.toString(), 
                    password: _password.text.toString()
                  )
                );
                res.fold(
                  (l){
                    var snackbar = SnackBar(content: Text(l));
                    ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  },
                  (r){
                    Navigator.pushAndRemoveUntil(
                      context, 
                      MaterialPageRoute(builder: (BuildContext context) => HomePage()),
                      (route) => false
                    );
                  }
                );
              }, 
              title: 'Create Account'
            )
          ],
        ),
      ),
    );
  }

  Widget _registerText() {
    return Text(
      'Register',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _fullNameField(BuildContext context) {
    return TextField(
      controller: _fullName,
      decoration: InputDecoration(
        hintText: 'Full Name'
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme
      ),
    );
  }

  Widget _emailField(BuildContext context) {
    return TextField(
      controller: _email,
      decoration: InputDecoration(
        hintText: 'Enter Email'
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme
      ),
    );
  }

  Widget _passwordField(BuildContext context) {
    return TextField(
      controller: _password,
      decoration: InputDecoration(
        hintText: 'Enter Password'
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme
      ),
    );
  }

  Widget _signinText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 30
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Do you have an account? ',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context, 
                MaterialPageRoute(builder: (BuildContext context) => SigninPage())
              );
            },
            child: const Text(
              'Sign In'
            )
          )
        ],
      ),
    );
  }
}