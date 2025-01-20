import 'package:elevate_task/Data_Model/Service_locator/ServiceLocator.dart';
import '../Data_Model/Repository/Product_Repo.dart';
import 'Bloc_states/Product_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductModelView extends Cubit<ProductState> {
  late ProductRepo repo;
  ProductModelView() : super(ProductIntial()) {
    repo = ProductRepo(Locator.dataSource);
  }

  Future<void> getProductData() async {
    emit(GetProductLoading());
    try {
      final response = await repo.GetProductList();
      if (response.isNotEmpty) {
        emit(GetProductSuccess(response));
      } else {
        emit(GetProductError('Failed to get results'));
      }
    } catch (error) {
      emit(GetProductError(error.toString()));
    }
  }
}
