import 'package:flutter/material.dart';
class OrderItemCard extends StatefulWidget {
  final String productName;
  final String description;
  final double price;

  const OrderItemCard({
    Key? key,
    required this.productName,
    required this.description,
    required this.price,
  }) : super(key: key);

  @override
  _OrderItemCardState createState() => _OrderItemCardState();
}

class _OrderItemCardState extends State<OrderItemCard> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.productName,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              widget.description,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Price: \$${widget.price.toStringAsFixed(2)}',
                  style: TextStyle(fontSize: 16),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          if (quantity > 1) quantity--;
                        });
                      },
                      icon: Icon(Icons.remove),
                    ),
                    Text(
                      quantity.toString(),
                      style: TextStyle(fontSize: 16),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          quantity++;
                        });
                      },
                      icon: Icon(Icons.add),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}