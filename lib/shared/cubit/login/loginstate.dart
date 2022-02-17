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
class opencemary1 extends CuraLoginStates{}
class openGallary2 extends CuraLoginStates{}