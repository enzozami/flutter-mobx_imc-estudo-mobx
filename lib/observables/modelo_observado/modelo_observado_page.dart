import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_imc/observables/modelo_observado/modelo_observado_controller.dart';

class ModeloObservadoPage extends StatefulWidget {
  const ModeloObservadoPage({super.key});

  @override
  State<ModeloObservadoPage> createState() => _ModeloObservadoPage();
}

class _ModeloObservadoPage extends State<ModeloObservadoPage> {
  final controller = ModeloObservadoController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modelo Observado Page'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Observer(builder: (_) {
              return ListView.builder(
                itemCount: controller.products.length,
                itemBuilder: (context, index) {
                  final productStore = controller.products[index];
                  return Observer(
                    builder: (_) => CheckboxListTile(
                      value: productStore.selectec,
                      onChanged: (_) {
                        controller.selectedProduct(index);
                      },
                      title: Text(productStore.product.name),
                    ),
                  );
                },
              );
            }),
          ),
          SizedBox(
            height: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () => controller.adicionarProduto(),
                  child: Text('Adicionar'),
                ),
                TextButton(
                  onPressed: () => controller.removerProduto(),
                  child: Text('Remover'),
                ),
                TextButton(
                  onPressed: () => controller.loadProducts(),
                  child: Text('Carregar'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
