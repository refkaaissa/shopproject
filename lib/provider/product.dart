import 'package:flutter/material.dart';

class Product with ChangeNotifier{
  final String id, title, description, imageUrl;
  final List <String> categoriesclothes;
  final int price;
  bool isFav;


  Product({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.description,
    required this.categoriesclothes,
    required this.price,
    this.isFav = false,
  });
}

class Products with ChangeNotifier{

  List<Product> get getProducts => [..._dummyProducts];

  List<Product> get getFav => [..._dummyProducts];

  void addFavProduct (String id){
    _favoriteProducts.add(_dummyProducts.firstWhere((element) => element.id == id));
    notifyListeners();
  }

  void removeFavProduct (String id){
    _favoriteProducts.removeWhere((element) => element.id == id);
    notifyListeners();
  }

  void removeProduct (String id){
    _dummyProducts.removeWhere((element) => element.id == id);
    notifyListeners();
  }

  final List<Product> _favoriteProducts = [];
  final List <Product> _dummyProducts = [
    Product(
      id: 'p1',
      title: 'skirt',
      imageUrl: 
        'https://www.redvalentino.com/35/35457162cd_22_a.jpg',
       description: 'this Item for Girls',
       categoriesclothes: [
         'CC1',
         'CC3',
       ],
       price: 12,
    ),
    Product(
      id: 'p2',
      title: 't-shirt',
      imageUrl: 
        'https://static.fnac-static.com/multimedia/Images/FR/MC/0b/c7/86/42387211/1507-1/tsp20200304174601/DISNEY-T-Shirt-Mickey-Mouse-Annoying-Face-S.jpg',
      description: 'this Item for Girls',
       categoriesclothes: [
         'CC1',
         'CC2',
       ],
       price: 20,
    ),
    Product(
      id: 'p3',
      title: 'jacket',
      imageUrl: 
        'https://media.dior.com/couture/ecommerce/media/catalog/product/7/g/1570207502_943C449A4462_C989_E01_ZHC.jpg',
      description: 'this Item for Girls',
       categoriesclothes: [
         'CC1',
         'CC2',
       ],
       price: 200,
    ),
    Product(
      id: 'p4',
      title: 'dress',
      imageUrl: 
        'https://www.hijabfashioninspiration.com/wp-content/uploads/2020/06/88181661_143548947156235_7713072963668176847_n-1014x1024.jpg',
     description: 'this Item for Girls',
       categoriesclothes: [
         'CC1',
         'CC3',
       ],
       price: 1000,
    ),
  ];
}