import 'package:vexana/vexana.dart';

class UserResponseModel extends INetworkModel<UserResponseModel> {
    UserResponseModel({
        this.token,
    });

    String? token;


    Map<String, dynamic> toJson() => {
        "token": token,
    };

  @override
  UserResponseModel fromJson(Map<String, dynamic> json) {
    return UserResponseModel(
        token: json["token"],
    );
  }
}
