import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shopproject/provider/product.dart';
import 'package:shopproject/widget/clothes_products_screen_item.dart';

//widget

class CategoryClothesProductsScreen extends StatelessWidget {
  static const routeName = '/category_clothes_products_screen';
  const CategoryClothesProductsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var args =
        ModalRoute.of(context)!.settings.arguments as Map <String,dynamic>;
    var products = Provider.of<Products>(context)
      .getProducts
      .where(
        (element) => element.categoriesclothes.contains(
          args['id'],
        ),
      ).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(args['title']),
      ),

      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          mainAxisExtent: 200,
          maxCrossAxisExtent: 200,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          childAspectRatio: 3 / 2,
        ), 
        itemBuilder: (ctx,index) => ChangeNotifierProvider.value(
          value: products[index],
          child: ClothesProductsScreenItem(),
        ),
        itemCount: products.length,
      ),
     
    );
  }
}