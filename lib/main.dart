import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:graduationproject/shared/cubit/login/blocobserver.dart';
import 'package:graduationproject/shared/styles/colors.dart';
import 'layout/flipcard/card.dart';
import 'modules/ForgetPassword/forgetpasswordscreen.dart';
import 'modules/Home/homescreen.dart';
import 'modules/aboutapp/aboutscrren.dart';
import 'modules/login/loginscreen.dart';
import 'modules/page1/malescreen.dart';
import 'modules/page1/page1screen.dart';
import 'modules/profile/profilescreen.dart';
import 'modules/register/RegisterScreen.dart';
import 'modules/splash_home/splashscreen.dart';
import 'modules/symptoms/symptomssccren.dart';

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
        primarySwatch: Colors.blue,
        appBarTheme:  const AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: Colors.black12,
                statusBarBrightness:  Brightness.dark,
            )
        ),
      ),
      home:  SymptomsScrren(),
    );
  }
}

