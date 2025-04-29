// class GroceryItem {
//   final String id;
//   final String name;
//   final int quantity;
//   final String category;

//   const GroceryItem({
//     required this.id,
//     required this.name,
//     required this.quantity,
//     required this.category,
//   });
// }
import 'package:flutter/material.dart';

class GroceryItem {
  final String label;
  final Color color;
  final int quantity;

  const GroceryItem({
    required this.label,
    required this.color,
    required this.quantity,
  });
}
