import '../../Data_Model/Model/Product_Model.dart';

abstract class ProductState {}

class ProductIntial extends ProductState {}

class GetProductLoading extends ProductState {}

class GetProductSuccess extends ProductState {
  List<ProductModel> products;
  GetProductSuccess(this.products);
}

class GetProductError extends ProductState {
  final String messege;
  GetProductError(this.messege);
}
