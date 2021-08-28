import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopproject/provider/product.dart';

 //screen
import 'package:shopproject/screen/category_clothes_products_screen.dart';
import 'package:shopproject/screen/botttom_tab_screen.dart';
import 'package:shopproject/screen/product_manage_clothes.dart';
import 'package:shopproject/screen/product_order_clothes.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(),
        ),

        
      ],

      
      
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.blueGrey,
          accentColor: Colors.amber[50],
          canvasColor: Colors.white,
          //canvasColor: Color.fromARGB(250, 160, 250, 210),
        ),
        //home:  CategoryClothesScreen(),
        routes: {
          '/': (ctx) => BottomTabScreen(),
          CategoryClothesProductsScreen.routeName: (ctx) => CategoryClothesProductsScreen(),
          ProductManageClothes.routeName: (_) => ProductManageClothes(),
          ProductOrderClothes.routeName: (_) => ProductOrderClothes(),
        },
      ),
    );
  }
}