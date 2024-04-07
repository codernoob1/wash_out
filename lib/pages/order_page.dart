// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  List<String> clothesItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Laundry'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: clothesItems.length,
              itemBuilder: (context, index) {
                return ClothesItem(
                  itemName: clothesItems[index],
                  onRemove: () {
                    setState(() {
                      clothesItems.removeAt(index);
                    });
                  },
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                _showAddItemDialog(context);
              },
              child: Text('Add Item'),
            ),
          ),
        ],
      ),
    );
  }

  void _showAddItemDialog(BuildContext context) {
    String newItemName = '';
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Add Item'),
          content: TextField(
            onChanged: (value) {
              newItemName = value;
            },
            decoration: InputDecoration(
              hintText: 'Enter item name',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  clothesItems.add(newItemName);
                });
                Navigator.pop(context);
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }
}

class ClothesItem extends StatelessWidget {
  final String itemName;
  final VoidCallback onRemove;

  const ClothesItem({
    Key? key,
    required this.itemName,
    required this.onRemove,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(itemName),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        onPressed: onRemove,
      ),
    );
  }
}
