import 'package:flutter/material.dart';

//screen

import 'package:shopproject/screen/category_clothes_screen.dart';
import 'package:shopproject/screen/favorite_product_screen.dart';

import 'package:shopproject/widget/drawer_widget.dart';


class BottomTabScreen extends StatefulWidget {
  const BottomTabScreen({ Key? key }) : super(key: key);

  @override
  _BottomTabScreenState createState() => _BottomTabScreenState();
}

class _BottomTabScreenState extends State<BottomTabScreen> {
  int _currentIndex = 0;
  late List<Map<String, dynamic>> _pages;


  void changeIndex (int index){
    setState(() {
      _currentIndex =index;
    });
  }
  @override
  void initState(){
    _pages = [
      {
        'title' : 'PRODUCTS',
        'page' : CategoryClothesScreen(),
      },
      {
        'title' : 'FAVORITE',
        'page' : FavoriteProductScreen(),
      },
    ];
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_currentIndex]['title']),
      ),
      drawer: Drawer(
        child: DraweWidget() ,
      ),
      body: _pages[_currentIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Theme.of(context).splashColor,
        unselectedItemColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: changeIndex,
        items: [
         BottomNavigationBarItem(
           icon: Icon(Icons.category),
           label: 'Product',
        ), 
        BottomNavigationBarItem(
           icon: Icon(Icons.favorite),
           label: 'favorite',
        ),
      ]
      ),
    );
  }
}