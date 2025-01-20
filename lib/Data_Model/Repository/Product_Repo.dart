import 'package:elevate_task/Data_Model/Data_source/Product_data_source.dart';

import '../Model/Product_Model.dart';

class ProductRepo {
  final ProductDataSource data_source;
  ProductRepo(this.data_source);

  Future<List<ProductModel>> GetProductList() async {
    return await data_source.GetProductList();
  }
}
