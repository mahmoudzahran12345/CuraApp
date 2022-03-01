abstract class CuraRegister {

}
class CuraRegisterInatialState extends CuraRegister{}
class CuraRegisterLoadingState extends CuraRegister{}
class CuraRegisterSuccessfulState extends CuraRegister{

}
class CuraRegisterErrorState extends CuraRegister{
  final String error;
  CuraRegisterErrorState(this.error);
}
class CuraCreateSuccessfulState extends CuraRegister{

}
class CuraCreateErrorState extends CuraRegister{
  final String error;
  CuraCreateErrorState(this.error);
}


class changepasswordRegister extends CuraRegister{}