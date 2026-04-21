import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:winamp_pro/common/widgets/appbar/app_bar.dart';
import 'package:winamp_pro/common/widgets/button/basic_app_button.dart';
import 'package:winamp_pro/core/configs/assets/app_vectors.dart';
import 'package:winamp_pro/presentation/auth/pages/signup.dart';

class SigninPage extends StatelessWidget  {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _signupText(context),
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
            _emailField(context),
            SizedBox(height: 25,),
            _passwordField(context),
            SizedBox(height: 50,),
            BasicAppButton(
              onPressed: () {}, 
              title: 'Sign In'
            )
          ],
        ),
      ),
    );
  }

  Widget _registerText() {
    return Text(
      'Sign In',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _emailField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Enter Email'
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme
      ),
    );
  }

  Widget _passwordField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Enter Password'
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme
      ),
    );
  }

  Widget _signupText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 30
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Have no account? ',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context, 
                MaterialPageRoute(builder: (BuildContext context) => SignupPage())
              );
            },
            child: const Text(
              'Sign Up'
            )
          )
        ],
      ),
    );
  }
}