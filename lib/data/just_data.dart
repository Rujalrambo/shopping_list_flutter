import 'package:shopping_list/models/grocery_item.dart';
import 'package:flutter/material.dart'; // Also needed for Color

final groceryItems = [
  const GroceryItem(
    label: 'Milk',
    color: Color.fromARGB(255, 29, 2, 179),
    quantity: 1,
  ),
  const GroceryItem(
    label: 'Bananas',
    color: Color.fromARGB(255, 53, 211, 47),
    quantity: 2,
  ),
  const GroceryItem(
    label: 'Beef Steak',
    color: Color.fromARGB(255, 216, 22, 184),
    quantity: 3,
  ),
];
