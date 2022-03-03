import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:mobx/mobx.dart';
import '../../../core/base/base_viewmodel.dart';
import '../model/user_request_model.dart';

import '../../makeup/view/makeup_view.dart';
import '../model/user_response_model.dart';
import '../service/login_service.dart';
part 'login_view_model.g.dart';

class LoginViewModel = _LoginViewModelBase with _$LoginViewModel;

abstract class _LoginViewModelBase with Store, BaseViewModel {
  final formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final FocusNode emailNode =FocusNode();
  final FocusNode passwordNode =FocusNode();

  late INetworkService userServices;

  @observable
  UserResponseModel? userResponseModel;

  @observable
  bool isAuthenticate = false;

  @action
  void changeAuth(){
    isAuthenticate = !isAuthenticate;
  }

  @override
  void setContext(BuildContext context) => this.context = context;

  @override
  void init() {
    userServices = VexanaLoginService(networkManager);
  }

  @action
  Future<UserResponseModel?> login(UserRequestModel userRequestModel) async {
    
    userResponseModel = await userServices.login(userRequestModel);
    userResponseModel == null ?  null : changeAuth();

    isAuthenticate ? context.navigateToPage(MakeupView()) : null;
  }
}