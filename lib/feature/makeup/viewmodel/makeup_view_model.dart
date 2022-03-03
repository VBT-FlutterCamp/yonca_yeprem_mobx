import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../core/base/base_viewmodel.dart';
import '../model/makeup_model.dart';
import '../service/makeup_service.dart';
part 'makeup_view_model.g.dart';

class MakeupViewModel = _MakeupViewModelBase with _$MakeupViewModel;

abstract class _MakeupViewModelBase with Store, BaseViewModel {

  late INetworkService networkService;

  @observable
  List<MakeupModel>? productList;

  @override
  void setContext(BuildContext context) => this.context = context;

  @action
  Future<void> fetchProducts() async {
    changeLoading();
    productList = await networkService.fetchProducts();
    changeLoading();
  }

  void launchURL(url) async {
  if (!await launch(url)) throw 'Could not launch $url';
}

  @observable
  bool isLoading = true;

  void changeLoading() {
    isLoading = !isLoading;
  }


  @override
  void init() {
    networkService = VexanaMakeupService(networkManager);
    fetchProducts();
  }
  
}