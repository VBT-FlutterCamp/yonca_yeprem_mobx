import 'package:vexana/vexana.dart';

import '../model/makeup_model.dart';

abstract class INetworkService{
  final INetworkManager networkManager;

  INetworkService(this.networkManager);

  Future<List<MakeupModel>?> fetchProducts();
  
}

class VexanaMakeupService extends INetworkService {
  VexanaMakeupService(INetworkManager networkManager) : super(networkManager);

  @override
  Future<List<MakeupModel>?> fetchProducts() async {
    final response = await networkManager.send<MakeupModel,List<MakeupModel>>('http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline', 
    parseModel: MakeupModel(), method: RequestType.GET);

    return response.data;
  }
}