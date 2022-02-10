import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduationproject/modules/Home/homescreen.dart';
import 'package:graduationproject/shared/styles/colors.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';


class SplashScreen2 extends StatelessWidget {
  const SplashScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: firstColor,
      appBar: AppBar(
        backgroundColor: firstColor,
        elevation: 0,
        title: Center(
          child: DefaultTextStyle(
      style: const TextStyle(
      fontSize: 30.0, color: Colors.white
      ),
      child: AnimatedTextKit(
          animatedTexts: [
            WavyAnimatedText('CURA APP'),
          ],
          isRepeatingAnimation: true,
          repeatForever: true,

      ),
    ),
        ) ,
      ),
        body: Padding(
          padding: const EdgeInsets.only(
            left: 65.0,
            top: 50.0
          ),
          child: AnimatedSplashScreen(
            splash:SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children:    [
                 Lottie.asset('assets/Images/doctor3.json'),
                  const SizedBox(height: 20.0,),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 35.0
                    ),
                    child: DefaultTextStyle(
                      style: const TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TypewriterAnimatedText('Get Well Soon'),
                        ],
                        repeatForever: true,
                        pause: const Duration(milliseconds: 4000),
                        displayFullTextOnTap: true,
                        stopPauseOnTap: true,
                      ),
                    ),
                  )
                ],
              ),
            ),
            nextScreen:  HomeScreen(),
            splashIconSize: 550,
            duration: 10000,
            splashTransition: SplashTransition.scaleTransition,
            pageTransitionType:PageTransitionType.rightToLeftWithFade ,
            backgroundColor: firstColor,
            animationDuration: const Duration(seconds: 1),


          ),
        )

    );
  }
}
