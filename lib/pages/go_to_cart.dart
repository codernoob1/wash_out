import 'package:flutter/material.dart';
import 'package:wash_out/pages/place_order.dart';
import 'cart.dart';

class GoToCartPage extends StatelessWidget {
  final Cart cart;

  const GoToCartPage({Key? key, required this.cart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cart.itemCount,
              itemBuilder: (context, index) {
                final item = cart.items[index];
                return ListTile(
                  title: Text(item.productName),
                  subtitle: Text(item.description),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Quantity: ${item.quantity}'),
                      SizedBox(width: 10),
                      IconButton(
                        onPressed: () {
                          cart.removeFromCart(item.productName);
                        },
                        icon: Icon(Icons.remove_shopping_cart),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20), // Adjust spacing between the list and the button
          ElevatedButton(
            onPressed: () {
              // Navigate to another page here
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PlaceOrderPage(GoToCartPage(cart: cart))),
              );
            },
            child: Text('Place Order'),
          ),
        ],
      ),
    );
  }
}
