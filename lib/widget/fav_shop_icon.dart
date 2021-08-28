import 'package:flutter/material.dart';

class FavShopIcon extends StatelessWidget {
  final IconData icon;
  const FavShopIcon(this.icon, { Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
      ],
    );
  }
}