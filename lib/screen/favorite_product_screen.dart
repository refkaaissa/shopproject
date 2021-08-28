import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopproject/provider/product.dart';
import 'package:shopproject/widget/clothes_products_screen_item.dart';

class FavoriteProductScreen extends StatelessWidget {
  const FavoriteProductScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var products = Provider.of<Products>(context).getFav;
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          mainAxisExtent: 200,
        ),
        itemCount: products.length,
        itemBuilder: (ctx, index) => ChangeNotifierProvider.value(
          value: products[index],
          child: ClothesProductsScreenItem(),
        ),
      ),
    );
  }
}