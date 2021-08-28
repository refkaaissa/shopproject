import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopproject/provider/product.dart';




class ClothesProductsScreenItem extends StatefulWidget {
  //final id, label;
  //final Color color;
  const ClothesProductsScreenItem({ Key? key }) : super(key: key);

  @override
  _ClothesProductsScreenItemState createState() => _ClothesProductsScreenItemState();
}

class _ClothesProductsScreenItemState extends State<ClothesProductsScreenItem> {
  @override
  Widget build(BuildContext context) {
    var product = Provider.of<Product>(context);
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 153,
                height: 192,
                child: ClipRRect(
                  child: Image.network(product.imageUrl),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
              ),
              Positioned(
                
                bottom: 0,
                child: Container(
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      //topLeft: Radius.circular(20),
                      //topRight: Radius.circular(20),
                    ),
                    color: Colors.black54,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        
                        IconButton(
                          onPressed: (){
                            setState(() {
                              if (product.isFav) {
                                Provider.of<Products>(context, listen: false)
                                .removeFavProduct(product.id);
                                product.isFav = false;
                              } else {
                                Provider.of<Products>(context, listen: false)
                                .addFavProduct(product.id);
                                product.isFav = true;
                              }
                              //product.isFav = !product.isFav;                          
                            });
                          },
                          icon: Icon(
                            product.isFav ? Icons.favorite : Icons.favorite_border,
                            color: Colors.pinkAccent,
                          ),
                        ),
                        Container(
                          child: 
                          Text(
                            product.title,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () => Navigator.pushNamed(context, '/checkout'), 
                          icon: Icon(Icons.shopping_cart),
                          color: Colors.cyan,
                        ),
                        
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}