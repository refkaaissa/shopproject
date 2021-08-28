

import 'package:flutter/material.dart';
import 'package:shopproject/screen/product_order_clothes.dart';

import '../screen/product_manage_clothes.dart';

class DraweWidget extends StatelessWidget {
  const DraweWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack (
          children: [
            Container(
              width: double.infinity,
              height: 150,
              color: Theme.of(context).primaryColorLight,
            ),
            Positioned(
              bottom: 3,
              left: 15,
              child: Text(
                'Menu',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
              ),
            )
          ],
        ),
        Divider(
          thickness: 2,
          height: 1,
        ),
        ListTile(
          leading: Icon(Icons.shop),
          onTap: () => Navigator.pushReplacementNamed(context, '/'),
          title: Text(
            'Shop',
            style: TextStyle(fontSize: 20),
          ),
        ),
        Divider(
          thickness: 2,
          height: 2,
        ),
         ListTile(
          leading: Icon(Icons.outbox_rounded),
          onTap: () => Navigator.pushReplacementNamed(context, ProductOrderClothes.routeName),
          title: Text(
            'Order',
            style: TextStyle(fontSize: 20),
          ),
        ),
        Divider(
          thickness: 2,
          height: 2,
        ),
         ListTile(
          leading: Icon(Icons.manage_search_rounded),
          onTap: () => Navigator.pushReplacementNamed(context, ProductManageClothes.routeName),
          title: Text(
            'ManageProduct',
            style: TextStyle(fontSize: 20),
          ),
        ),
        Divider(
          thickness: 2,
          height: 2,
        ),
      ],
    );
  }
}