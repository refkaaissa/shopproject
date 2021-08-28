import 'package:flutter/material.dart';
import 'package:shopproject/model/category_clothes.dart';

//widget

import '../widget/product_screen_item.dart';

class CategoryClothesScreen extends StatefulWidget {
  const CategoryClothesScreen({ Key? key }) : super(key: key);

  @override
  _CategoryClothesScreenState createState() => _CategoryClothesScreenState();
}

class _CategoryClothesScreenState extends State<CategoryClothesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 5 / 4,
        ), 
        itemBuilder: (ctx, index){
          return ProductScreenItem(
            DUMMY_CATEGORIESCLOTHES[index].id,
            DUMMY_CATEGORIESCLOTHES[index].title,
            DUMMY_CATEGORIESCLOTHES[index].color,
          );
        },
        itemCount: DUMMY_CATEGORIESCLOTHES.length,
      ),
    );
  }
}