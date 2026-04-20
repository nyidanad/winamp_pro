import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:winamp_pro/common/widgets/button/basic_app_button.dart';
import 'package:winamp_pro/core/configs/assets/app_images.dart';
import 'package:winamp_pro/core/configs/assets/app_vectors.dart';
import 'package:winamp_pro/core/configs/theme/app_colors.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 40,
              horizontal: 40,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  AppImages.introBG,
                )
              )
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(
                    AppVectors.logoWhite,
                    width: 60,
                    height: 60,
                  ),
                ),
                Spacer(),
                Text(
                  'Enjoy Listening To Music',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 28,
                  ),
                ),
                SizedBox(height: 21,),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dalore magna aliqua.',
                  style: TextStyle(
                    color: AppColors.grey,
                    fontSize: 13,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20,),
                BasicAppButton(
                  onPressed: () {
                    
                  }, 
                  title: 'Get Started'
                )
              ],
            ),
          ),

          Container(
            color: Colors.black.withOpacity(0.15),
          )
        ],
      )
    );
  }
}