import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:graduationproject/modules/page1/page1screen.dart';
import 'package:graduationproject/modules/page1/page1screen.dart';
import 'dart:io';

import '../../../models/doctor/doctormodel.dart';
import 'loginstate.dart';

class CuraLoginCubit extends Cubit<CuraLoginStates> {
  CuraLoginCubit() : super (CuraLoginInatialState());

  static CuraLoginCubit get(context) => BlocProvider.of(context);
  IconData suffix = Icons.visibility;
  bool ispassword = true;

  void ChangeIconsPassword() {
    ispassword = !ispassword;
    suffix = ispassword ? Icons.visibility : Icons.visibility_off;
    emit(ChangePassword());
  }

  bool ?islogin;

  void userLogin({
    required String email,
    required String password,
  }) {
    emit(CuraLoginLoadingState());
    FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email
        , password: password
    ).then((value) {
      emit(CuraLoginSuccessfulState(value.user!.uid));
    }).catchError((error) {
      emit(CuraLoginErrorState(error.toString()));
    });
  }
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  Future googleSignIn()async{
    emit(CuraLoginGoogleLoadingState());
    final GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication=await googleSignInAccount?.authentication as GoogleSignInAuthentication;
    final AuthCredential credential =GoogleAuthProvider.credential(
      idToken: googleSignInAuthentication.idToken,
      accessToken: googleSignInAuthentication.accessToken
    );
    await firebaseAuth.signInWithCredential(credential).then((value) {
      emit(SignGoggleSuccessfulState());
    }).catchError((error){
      emit(SignGoggleErrorState(error.toString()));
    });
  }
  ////////////////////////////////////////
  Future resetPassword({required String email})async{
    emit(ResetpasswordLoadingState());
    await firebaseAuth.sendPasswordResetEmail(
        email: email
    ).then((value) {
      emit(ResetpasswordSuccessfulState());
    }).catchError((error){
      print(error.toString());
      emit(ResetpasswordErrorState(error.toString()));
    });
  }

}