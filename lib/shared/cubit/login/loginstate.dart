abstract class CuraLoginStates{
}
class CuraLoginInatialState extends CuraLoginStates{}
class CuraLoginLoadingState extends CuraLoginStates{}
class CuraLoginSuccessfulState extends CuraLoginStates{
  final String uId;

  CuraLoginSuccessfulState(this.uId);
}
class CuraLoginErrorState extends CuraLoginStates{
  final String error;
  CuraLoginErrorState(this.error);
}
class CuraCreateLoadingState extends CuraLoginStates{}
class ChangePassword extends CuraLoginStates{}
class SignGoggleSuccessfulState extends CuraLoginStates{}
class SignGoggleErrorState extends CuraLoginStates{
  final String error;

  SignGoggleErrorState(this.error);
}
class CuraLoginGoogleLoadingState extends CuraLoginStates{}
class ResetpasswordSuccessfulState extends CuraLoginStates{}
class ResetpasswordErrorState extends CuraLoginStates{
  final String error;

  ResetpasswordErrorState(this.error);
}
class ResetpasswordLoadingState extends CuraLoginStates{}
