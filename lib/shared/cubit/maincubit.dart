import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduationproject/modules/dashboard/dashscreen.dart';
import 'package:graduationproject/modules/feedback/feedbackscreen.dart';
import 'package:graduationproject/modules/notification/notifictionscreen.dart';
import 'package:graduationproject/modules/setting/settingscreen.dart';

import 'mainstates.dart';

class CuraCubit extends Cubit <CuraStateLayout>{
  CuraCubit():super(InatialStateCura());
 static CuraCubit get(context) =>BlocProvider.of(context);


  int currentIndex = 0;
  void changebottom(int index){
    currentIndex = index;
    emit(CurachangeitemvStates());
  }
}