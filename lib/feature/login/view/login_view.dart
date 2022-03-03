import 'package:flutter/material.dart';

import '../../../core/base/base_view.dart';
import '../../../product/widget/custom_text_form_field.dart';
import '../model/user_request_model.dart';
import '../viewmodel/login_view_model.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
        viewModel: LoginViewModel(),
        onModelReady: (model) {
          model.setContext(context);
          model.init();
        },
        onPageBuilder: (BuildContext context, LoginViewModel userViewModel) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
                child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset('assets/images/login_logo.png'),
                  Form(
                    child: Column(
                      children: [
                        CustomTextFormField(
                            textController: userViewModel.emailController,
                            textInputType: TextInputType.emailAddress,
                            labelText: 'Email',
                            focusNode: userViewModel.emailNode),
                        CustomTextFormField(
                            textController: userViewModel.passwordController,
                            textInputType: TextInputType.text,
                            labelText: 'Password',
                            focusNode: userViewModel.passwordNode),
                      ],
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        userViewModel.login(UserRequestModel(
                            email: userViewModel.emailController.text,
                            password: userViewModel.passwordController.text));
                      },
                      child: Text("Login"))
                ],
              ),
            )),
          );
        });
  }
}
