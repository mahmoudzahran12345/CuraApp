import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:graduationproject/shared/styles/colors.dart';
import 'modules/splash_home/splashscreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme:  AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: firstColor,
                statusBarIconBrightness: Brightness.light
            )
        )
      ),
      home: const SplashScreen(),
    );
  }
}

