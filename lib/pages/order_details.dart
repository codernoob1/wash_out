// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wash_out/pages/orderitem_card.dart';

class OrderDetails extends StatefulWidget {
  final String text;

  const OrderDetails({Key? key, required this.text}) : super(key: key);

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.text),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OrderItemCard(
                productName: 'Product Name 1',
                description: 'Description of Product 1 goes here...',
                price: 10.00,
              ),
              OrderItemCard(
                productName: 'Product Name 2',
                description: 'Description of Product 2 goes here...',
                price: 10.00,
              ),
              OrderItemCard(
                productName: 'Product Name 3',
                description: 'Description of Product 1 goes here...',
                price: 10.00,
              ),
              OrderItemCard(
                productName: 'Product Name 4',
                description: 'Description of Product 4 goes here...',
                price: 10.00,
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // logic of order now button
                  },
                  child: Text('Place Order'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
