import 'package:elevate_task/Data_Model/Data_source/Product_data_source.dart';
import 'package:dio/dio.dart';
import '../Model/Product_Model.dart';

class GetProductListApi extends ProductDataSource {
  Future<List<ProductModel>> GetProductList() async {
    try {
      Dio dio = Dio();
      const url = 'https://fakestoreapi.com/products';
      Response response = await dio.get(url);
      final List<dynamic> jsonData = response.data;
      final Product_response =
          jsonData.map((item) => ProductModel.fromJson(item)).toList();

      if (Product_response.isNotEmpty) {
        return Product_response;
      } else {
        throw Exception('Failed to get product list ');
      }
    } catch (e) {
      rethrow;
    }
  }
}
