import 'package:flutter/material.dart';
import 'package:shopping_list/models/grocery_item.dart';
import 'package:shopping_list/widgets/new_item.dart';

class GroceryList extends StatefulWidget {
  const GroceryList({super.key});

  @override
  State<GroceryList> createState() => _GroceryListState();
}

class _GroceryListState extends State<GroceryList> {
  final List<GroceryItem> _groceryItems = [];

  void _addItem() async {
    final newItem = await Navigator.of(
      context,
    ).push<GroceryItem>(MaterialPageRoute(builder: (ctx) => const NewItem()));

    if (newItem == null) {
      return;
    }
    setState(() {
      _groceryItems.add(newItem);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grocery List'),
        actions: [IconButton(onPressed: _addItem, icon: Icon(Icons.add))],
      ),
      body:
          _groceryItems.isEmpty
              ? Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Uh nothinig here',
                      style: Theme.of(
                        context,
                      ).textTheme.headlineLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Try adding some items in the list.',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                  ],
                ),
              )
              : ListView.builder(
                itemCount: _groceryItems.length,
                itemBuilder:
                    (ctx, index) => ListTile(
                      title: Text(_groceryItems[index].name),
                      leading: Container(
                        width: 24,
                        height: 24,
                        color: _groceryItems[index].category.color,
                      ),
                      trailing: Text(_groceryItems[index].quantity.toString()),
                    ),
              ),
    );
  }
}
