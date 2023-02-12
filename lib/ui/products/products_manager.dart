import 'dart:core';
import '../../models/Product.dart';
import '../../models/Product.dart';
class ProductManager{
  int get itemCount{
    return _items.length;
  }
  List<Product> get items{
    return [..._items];
  }
  List<Product> get favoriteItems{
    return _items.where((prodItem) => prodItem.isFavorite).toList();
  }
  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }
}
