// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'makeup_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MakeupViewModel on _MakeupViewModelBase, Store {
  final _$productListAtom = Atom(name: '_MakeupViewModelBase.productList');

  @override
  List<MakeupModel>? get productList {
    _$productListAtom.reportRead();
    return super.productList;
  }

  @override
  set productList(List<MakeupModel>? value) {
    _$productListAtom.reportWrite(value, super.productList, () {
      super.productList = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_MakeupViewModelBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$fetchProductsAsyncAction =
      AsyncAction('_MakeupViewModelBase.fetchProducts');

  @override
  Future<void> fetchProducts() {
    return _$fetchProductsAsyncAction.run(() => super.fetchProducts());
  }

  @override
  String toString() {
    return '''
productList: ${productList},
isLoading: ${isLoading}
    ''';
  }
}
