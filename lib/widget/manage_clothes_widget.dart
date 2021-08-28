import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopproject/provider/product.dart';

class ManageClothesWidget extends StatefulWidget {
  const ManageClothesWidget({ Key? key }) : super(key: key);

  @override
  _ManageClothesWidgetState createState() => _ManageClothesWidgetState();
}

class _ManageClothesWidgetState extends State<ManageClothesWidget> {
  @override
  Widget build(BuildContext context) {
    var product = Provider.of<Product>(context);
    return ListTile(
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                foregroundImage: NetworkImage(product.imageUrl),
                 //child: Text('${myproducts[index].imageUrl}'),
                radius: 20,
              ),
            ),
            title: Text(product.title),
            trailing: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () => Navigator.pushNamed(context, '/'), 
                  icon: Icon(
                    Icons.edit,
                    color: Colors.indigoAccent,
                  ),
                  iconSize: 30,
                ),
                IconButton(
                  onPressed: (){
                    setState(() {
                      Provider.of<Products>(context, listen: false).removeProduct(product.id);
                      print(product);
                    });
                  }, 
                  icon: Icon(
                    Icons.delete_forever_rounded,
                    color: Colors.deepOrange,
                  ),
                  iconSize: 30,
                ),
              ],
            ),
          );
  }
}