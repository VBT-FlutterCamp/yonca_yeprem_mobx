import 'package:vexana/vexana.dart';
import '../model/user_request_model.dart';
import '../model/user_response_model.dart';

abstract class INetworkService{
  final INetworkManager networkManager;

  INetworkService(this.networkManager);

  Future<UserResponseModel?> login(UserRequestModel userRequestModel);
  
}

class VexanaLoginService extends INetworkService {
  VexanaLoginService(INetworkManager networkManager) : super(networkManager);

  @override
  Future<UserResponseModel?> login(UserRequestModel userRequestModel) async {
    final response = await networkManager.send<UserResponseModel,UserResponseModel>('https://reqres.in/api/login', 
    parseModel: UserResponseModel(), method: RequestType.POST, data: userRequestModel);

    return response.data;
  }
}