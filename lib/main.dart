import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:graduationproject/shared/cubit/login/blocobserver.dart';
import 'modules/Home/home1.dart';
import 'modules/Home/homescreen.dart';
import 'modules/page1/malescreen.dart';
import 'modules/splash_home/splashscreen.dart';
import 'modules/splash_home/splashscreen2.dart';
void main()async {
  Bloc.observer = MyBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        appBarTheme:  const AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: Colors.black12,
                statusBarBrightness:  Brightness.dark,
            )
        ),
      ),
      home:       const SplashScreen2(),
    );
  }
}

