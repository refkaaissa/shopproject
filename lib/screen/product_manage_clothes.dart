import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopproject/model/category_clothes.dart';
//widget
import 'package:shopproject/widget/drawer_widget.dart';
import 'package:shopproject/widget/manage_clothes_widget.dart';

//provider

import '../provider/product.dart';

class ProductManageClothes extends StatefulWidget {
  static const  routeName = '/product_manage_clothes';

  const ProductManageClothes({ Key? key }) : super(key: key);

  @override
  _ProductManageClothesState createState() => _ProductManageClothesState();
}

class _ProductManageClothesState extends State<ProductManageClothes> {
  @override
  Widget build(BuildContext context) {
    var products = Provider.of<Products>(context).getProducts;
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Your Products'
          ),
      ),
      drawer: Drawer(
        child: DraweWidget(),
      ),
      body: ListView.builder(
        itemCount: DUMMY_CATEGORIESCLOTHES.length,
        itemBuilder: (ctx, index)=> ChangeNotifierProvider.value(
          value: products[index],
          child: ManageClothesWidget(),
        ),
      ),     
    );
  }
}