// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ProductStore on ProductStoreBase, Store {
  late final _$productAtom =
      Atom(name: 'ProductStoreBase.product', context: context);

  @override
  ProductModel get product {
    _$productAtom.reportRead();
    return super.product;
  }

  @override
  set product(ProductModel value) {
    _$productAtom.reportWrite(value, super.product, () {
      super.product = value;
    });
  }

  late final _$selectecAtom =
      Atom(name: 'ProductStoreBase.selectec', context: context);

  @override
  bool get selectec {
    _$selectecAtom.reportRead();
    return super.selectec;
  }

  @override
  set selectec(bool value) {
    _$selectecAtom.reportWrite(value, super.selectec, () {
      super.selectec = value;
    });
  }

  @override
  String toString() {
    return '''
product: ${product},
selectec: ${selectec}
    ''';
  }
}
