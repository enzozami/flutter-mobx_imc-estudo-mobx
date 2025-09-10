import 'package:mobx/mobx.dart';
import 'package:mobx_imc/model/product_model.dart';
import 'package:mobx_imc/observables/modelo_observado/model/product_store.dart';
part 'modelo_observado_controller.g.dart';

class ModeloObservadoController = ModeloObservadoControllerBase with _$ModeloObservadoController;

abstract class ModeloObservadoControllerBase with Store {
  @observable
  var products = <ProductStore>[].asObservable();

  @action
  void loadProducts() {
    var productsData = [
      ProductStore(product: ProductModel(name: 'Computador'), selectec: false),
      ProductStore(product: ProductModel(name: 'Celular'), selectec: false),
      ProductStore(product: ProductModel(name: 'Teclado'), selectec: false),
      ProductStore(product: ProductModel(name: 'Mouse'), selectec: false),
    ];
    products.addAll(productsData);
  }

  @action
  void adicionarProduto() {
    products.add(ProductStore(product: ProductModel(name: 'Computador'), selectec: false));
  }

  @action
  void removerProduto() {
    products.removeAt(0);
  }

  @action
  void selectedProduct(int index) {
    var productSelected = products[index].selectec;
    products[index].selectec = !productSelected;
  }
}
