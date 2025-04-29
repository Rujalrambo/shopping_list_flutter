import 'package:flutter/material.dart';
import 'package:shopping_list/data/just_data.dart';

class GroceryScreen extends StatelessWidget {
  const GroceryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your Groceries')),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: groceryItems.length,
        itemBuilder: (context, index) {
          final item = groceryItems[index];
          return Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: item.color,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(width: 20),
              Text(item.label, style: Theme.of(context).textTheme.titleLarge),
              const Spacer(),
              Text(
                item.quantity.toString(),
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 60),
            ],
          );
        },
      ),
    );
  }
}
