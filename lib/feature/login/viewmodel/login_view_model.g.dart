// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginViewModel on _LoginViewModelBase, Store {
  final _$userResponseModelAtom =
      Atom(name: '_LoginViewModelBase.userResponseModel');

  @override
  UserResponseModel? get userResponseModel {
    _$userResponseModelAtom.reportRead();
    return super.userResponseModel;
  }

  @override
  set userResponseModel(UserResponseModel? value) {
    _$userResponseModelAtom.reportWrite(value, super.userResponseModel, () {
      super.userResponseModel = value;
    });
  }

  final _$isAuthenticateAtom = Atom(name: '_LoginViewModelBase.isAuthenticate');

  @override
  bool get isAuthenticate {
    _$isAuthenticateAtom.reportRead();
    return super.isAuthenticate;
  }

  @override
  set isAuthenticate(bool value) {
    _$isAuthenticateAtom.reportWrite(value, super.isAuthenticate, () {
      super.isAuthenticate = value;
    });
  }

  final _$loginAsyncAction = AsyncAction('_LoginViewModelBase.login');

  @override
  Future<UserResponseModel?> login(UserRequestModel userRequestModel) {
    return _$loginAsyncAction.run(() => super.login(userRequestModel));
  }

  final _$_LoginViewModelBaseActionController =
      ActionController(name: '_LoginViewModelBase');

  @override
  void changeAuth() {
    final _$actionInfo = _$_LoginViewModelBaseActionController.startAction(
        name: '_LoginViewModelBase.changeAuth');
    try {
      return super.changeAuth();
    } finally {
      _$_LoginViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
userResponseModel: ${userResponseModel},
isAuthenticate: ${isAuthenticate}
    ''';
  }
}
