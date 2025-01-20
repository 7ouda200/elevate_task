import '../Model/Product_Model.dart';

abstract class ProductDataSource {
  Future<List<ProductModel>> GetProductList();
}
