import 'package:elevate_task/Data_Model/Data_api/Product_api.dart';
import 'package:elevate_task/Data_Model/Data_source/Product_data_source.dart';

class Locator {
  static ProductDataSource dataSource = GetProductListApi();
}
