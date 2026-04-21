import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:winamp_pro/common/helpers/is_dark_mode.dart';
import 'package:winamp_pro/common/widgets/appbar/app_bar.dart';
import 'package:winamp_pro/common/widgets/button/basic_app_button.dart';
import 'package:winamp_pro/core/configs/assets/app_images.dart';
import 'package:winamp_pro/core/configs/assets/app_vectors.dart';
import 'package:winamp_pro/core/configs/theme/app_colors.dart';
import 'package:winamp_pro/presentation/auth/pages/signin.dart';
import 'package:winamp_pro/presentation/auth/pages/signup.dart';

class SignupOrSigninPage extends StatelessWidget  {
  const SignupOrSigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BasicAppbar(

          ),
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(
              AppVectors.topPattern
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(
              AppVectors.bottomPattern
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(
              AppImages.authBG
            )
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AppVectors.logo,
                    width: 50,
                    height: 50,
                  ),
                  SizedBox(
                    height: 55,
                  ),
                  Text(
                    'Enjoy Listening To Music',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
                  SizedBox(
                    height: 21,
                  ),
                  Text(
                    'Winamp builds tools that empower artists to manage their music and revenue, while delivering a player that offers a seamless listening experience.',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: AppColors.grey
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: BasicAppButton(
                          onPressed: () {
                            Navigator.push(
                              context, 
                              MaterialPageRoute(builder: (BuildContext context) => const SignupPage())
                            );
                          },
                           title: 'Register'
                        )
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 1,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context, 
                              MaterialPageRoute(builder: (BuildContext context) => const SigninPage())
                            );
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 26,
                              color: context.isDarkMode ? Colors.white : Colors.black
                            ),
                          )
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ),
        ],
      )
    );
  }
}