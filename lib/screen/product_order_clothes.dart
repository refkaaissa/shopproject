import 'package:flutter/material.dart';
//widget
import 'package:shopproject/widget/drawer_widget.dart';

class ProductOrderClothes extends StatefulWidget {
  static const  routeName = '/product_order_clothes';

  const ProductOrderClothes({ Key? key }) : super(key: key);

  @override
  _ProductOrderClothesState createState() => _ProductOrderClothesState();
}

class _ProductOrderClothesState extends State<ProductOrderClothes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Orders'
        ),
      ),
      drawer: Drawer(
        child: DraweWidget(),
      ),
    );
  }
}