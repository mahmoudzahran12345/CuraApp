abstract class CuraAppState {}
class CuarAppInatialState extends CuraAppState{}
class Curachangepassword extends CuraAppState{}
class UpdateUserLoading extends CuraAppState{}
class UpdateUserSuccessful extends CuraAppState{}
class UpdateUserError extends CuraAppState{
  final String error;
  UpdateUserError(this.error);

}

class SocialLoadingStateGet extends CuraAppState{}
class SocialGetUserSuccessState extends CuraAppState{}
class SocialGetUserErrorState extends CuraAppState{
  final String error;
  SocialGetUserErrorState(this.error);

}
class CurachangeImage extends CuraAppState{}
