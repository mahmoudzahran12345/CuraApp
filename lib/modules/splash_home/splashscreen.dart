import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduationproject/modules/splash_home/splashscreen2.dart';
import 'package:graduationproject/shared/styles/colors.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: seccolor,
      appBar: AppBar(
      backgroundColor: seccolor,
      title: Center(
        child: DefaultTextStyle(
          style:   const TextStyle(
            fontSize: 30.0,
            fontFamily: 'Canterbury',
            color: pramcolor,
            fontWeight: FontWeight.bold
          ),
          child: AnimatedTextKit(
            animatedTexts: [
              ScaleAnimatedText('Welcome To CURA APP'),
            ],
            repeatForever: true,
            pause: const Duration(milliseconds: 1000),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
          ),
        ),
      ),
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: AnimatedSplashScreen(
              splash:SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: const [
                        Image(
                          image: AssetImage('assets/Images/logo.png'),
                          width: 350,
                          height: 250,
                          color: pramcolor,
                        ) ,
                        Text('Cura App',textAlign: TextAlign.center,style: TextStyle(color: seccolor,fontSize: 30),)

                      ],
                    )
                  ],
                ),
              ),
              nextScreen: const SplashScreen2(),
            splashIconSize: 250,
            duration: 4000,
            splashTransition: SplashTransition.fadeTransition,
            pageTransitionType:PageTransitionType.rightToLeftWithFade ,
            backgroundColor: seccolor,
            animationDuration: const Duration(seconds: 3),
          ),
        ),
      )
    );
  }

}
