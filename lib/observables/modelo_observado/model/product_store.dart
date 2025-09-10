import 'package:mobx/mobx.dart';

import 'package:mobx_imc/model/product_model.dart';

part 'product_store.g.dart';

class ProductStore = ProductStoreBase with _$ProductStore;

abstract class ProductStoreBase with Store {
  @observable
  ProductModel product;
  @observable
  bool selectec;

  ProductStoreBase({
    required this.product,
    required this.selectec,
  });
}
