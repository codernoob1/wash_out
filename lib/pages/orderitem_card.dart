
import 'package:flutter/material.dart';
import 'cart.dart';
import 'go_to_cart.dart'; // Import the GoToCartPage

class Product {
  final String name;
  final String description;
  final double price;

  Product({
    required this.name,
    required this.description,
    required this.price,
  });
}

class OrderItemCard extends StatefulWidget {
  final Product product;
  final Cart cart;

  const OrderItemCard({
    Key? key,
    required this.product,
    required this.cart,
  }) : super(key: key);

  @override
  _OrderItemCardState createState() => _OrderItemCardState();
}

class _OrderItemCardState extends State<OrderItemCard> {
  bool addedToCart = false;
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
              widget.product.name,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              widget.product.description,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Price: \$${(widget.product.price * quantity).toStringAsFixed(2)}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
                    Text('$quantity'),
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
                ElevatedButton(
                  onPressed: () {
                    if (!addedToCart) {
                      widget.cart.addToCart(CartItem(
                        productName: widget.product.name,
                        description: widget.product.description,
                        price: widget.product.price,
                        quantity: quantity,
                      ));
                      setState(() {
                        addedToCart = true;
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Added to Cart')),
                      );
                    } else {
                      // Navigate to GoToCartPage if already added to cart
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GoToCartPage(cart: widget.cart),
                        ),
                      ).then((_) {
                        // Update state when returning from GoToCartPage
                        setState(() {
                          addedToCart = true; // We're still in the cart
                        });
                      });
                    }
                  },
                  child: Text(addedToCart ? 'Go to Cart' : 'Add to Cart'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
