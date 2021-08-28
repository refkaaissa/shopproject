import 'package:flutter/material.dart';

//google fonts
import 'package:google_fonts/google_fonts.dart';


//screen

import '../screen/category_clothes_products_screen.dart';

class ProductScreenItem extends StatelessWidget {
  final id, label;
  final Color color;
  const ProductScreenItem(this.id,this.label,this.color,{ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(
        context, 
        CategoryClothesProductsScreen.routeName,
        arguments: {
          'id': id,
          'title': label,
        },
        
      ),
      child: Card(
        color: color,
        child: Center(
          child: Text(
            label,
            style: GoogleFonts.actor(
              textStyle: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}