import 'package:elevate_task/View/Product_UI/Product_item.dart';
import 'package:flutter/material.dart';

import '../../Data_Model/Model/Product_Model.dart';

class Grid extends StatefulWidget {
  const Grid({super.key, required this.products});
  final List<ProductModel> products;
  @override
  State<Grid> createState() => _GridState();
}

class _GridState extends State<Grid> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 5,
                childAspectRatio: 0.75,
              ),
              itemCount: widget.products.length,
              itemBuilder: (context, index) {
                return Item(
                  title: widget.products[index].title,
                  price: widget.products[index].price,
                  description: widget.products[index].description,
                  category: widget.products[index].category,
                  image: widget.products[index].image,
                  rate: widget.products[index].rating?.rate,
                  count: widget.products[index].rating?.count,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
