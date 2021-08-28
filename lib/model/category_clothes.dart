
import 'package:flutter/material.dart';

class CategoryClothes {
  final String id, title, description, imageURL;
  final Color color;

  const CategoryClothes({
    required this.id,
    required this.title,
    required this.description,
    required this.imageURL,
    required this.color,
  });
}

const DUMMY_CATEGORIESCLOTHES =  const [

  CategoryClothes(
    id: 'CC1',
    title: 'MEN', 
     imageURL: 
        'https://static.fnac-static.com/multimedia/Images/FR/MC/0b/c7/86/42387211/1507-1/tsp20200304174601/DISNEY-T-Shirt-Mickey-Mouse-Annoying-Face-S.jpg',
       description: 'this Item for Girls',
    color: Colors.lightBlueAccent,
  ),  
  CategoryClothes(
    id: 'CC2',
    title: 'WOMEN', 
    imageURL: 
        'https://static.fnac-static.com/multimedia/Images/FR/MC/0b/c7/86/42387211/1507-1/tsp20200304174601/DISNEY-T-Shirt-Mickey-Mouse-Annoying-Face-S.jpg',
       description: 'this Item for Girls',
    color: Colors.redAccent,
  ), 
  CategoryClothes(
    id: 'CC3',
    title: 'KIDS', imageURL: 
        'https://static.fnac-static.com/multimedia/Images/FR/MC/0b/c7/86/42387211/1507-1/tsp20200304174601/DISNEY-T-Shirt-Mickey-Mouse-Annoying-Face-S.jpg',
       description: 'this Item for Girls',
    color: Colors.pinkAccent,
  ),   

];