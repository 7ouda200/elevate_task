import 'package:elevate_task/View/Product_UI/Product_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:elevate_task/ViewModel/Product_VM.dart';
import '../ViewModel/Bloc_states/Product_state.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final viewModel = ProductModelView();
  @override
  Widget build(BuildContext context) {
    viewModel.getProductData();
    return BlocProvider(
      create: (context) => viewModel,
      child: BlocBuilder<ProductModelView, ProductState>(
        builder: (context, state) {
          if (state is GetProductLoading) {
            return SafeArea(
                child: Scaffold(
              body: Center(
                child: CircularProgressIndicator(
                  color: Colors.blue.shade900,
                ),
              ),
            ));
          } else if (state is GetProductError) {
            return Text(state.messege);
          } else if (state is GetProductSuccess) {
            return SafeArea(
                child: Scaffold(
              appBar: AppBar(
                title: Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Colors.blue.shade900,
              ),
              body: Grid(products: state.products),
            ));
          } else {
            return SizedBox(
              child: Text(
                'No data',
                style: TextStyle(color: Colors.blue),
              ),
            );
          }
        },
      ),
    );
  }
}
