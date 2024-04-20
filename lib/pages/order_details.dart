// import 'package:flutter/material.dart';
// import 'package:wash_out/pages/orderitem_card.dart'; // Import the OrderItemCard
// import 'cart.dart'; // Import the Cart class

// class OrderDetails extends StatefulWidget {
//   final String text;

//   const OrderDetails({Key? key, required this.text}) : super(key: key);

//   @override
//   State<OrderDetails> createState() => _OrderDetailsState();
// }

// class _OrderDetailsState extends State<OrderDetails> {
//   Cart _cart = Cart(); // Create an instance of the Cart class

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.text),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               OrderItemCard(
//                 product: Product(
//                   name: 'Product Name 1',
//                   description: 'Description of Product 1 goes here...',
//                   price: 10.00,
//                 ),
//                 cart: _cart, // Pass the cart object to the OrderItemCard
//               ),
//               OrderItemCard(
//                 product: Product(
//                   name: 'Product Name 2',
//                   description: 'Description of Product 2 goes here...',
//                   price: 10.00,
//                 ),
//                 cart: _cart, // Pass the cart object to the OrderItemCard
//               ),
//               OrderItemCard(
//                 product: Product(
//                   name: 'Product Name 3',
//                   description: 'Description of Product 3 goes here...',
//                   price: 10.00,
//                 ),
//                 cart: _cart, // Pass the cart object to the OrderItemCard
//               ),
//               OrderItemCard(
//                 product: Product(
//                   name: 'Product Name 4',
//                   description: 'Description of Product 4 goes here...',
//                   price: 10.00,
//                 ),
//                 cart: _cart, // Pass the cart object to the OrderItemCard
//               ),
//               SizedBox(height: 20),
//               Center(
//                 child: ElevatedButton(
//                   onPressed: () {
//                     // Logic for "Place Order" button
//                     // You can access cart items and perform order-related operations here
//                     // For example:
//                     // _cart.items.forEach((item) {
//                     //   print('Product: ${item.productName}, Quantity: ${item.quantity}');
//                     // });
//                   },
//                   child: Text('Place Order'),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:wash_out/pages/orderitem_card.dart'; // Import the OrderItemCard
import 'cart.dart'; // Import the Cart class

class OrderDetails extends StatefulWidget {
  final String text;

  const OrderDetails({Key? key, required this.text}) : super(key: key);

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  Cart _cart = Cart(); // Create an instance of the Cart class

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
                product: Product(
                  name: 'Product Name 1',
                  description: 'Description of Product 1 goes here...',
                  price: 10.00,
                ),
                cart: _cart, // Pass the cart object to the OrderItemCard
              ),
              OrderItemCard(
                product: Product(
                  name: 'Product Name 2',
                  description: 'Description of Product 2 goes here...',
                  price: 10.00,
                ),
                cart: _cart, // Pass the cart object to the OrderItemCard
              ),
              OrderItemCard(
                product: Product(
                  name: 'Product Name 3',
                  description: 'Description of Product 3 goes here...',
                  price: 10.00,
                ),
                cart: _cart, // Pass the cart object to the OrderItemCard
              ),
              OrderItemCard(
                product: Product(
                  name: 'Product Name 4',
                  description: 'Description of Product 4 goes here...',
                  price: 10.00,
                ),
                cart: _cart, // Pass the cart object to the OrderItemCard
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Logic for "Place Order" button
                    // You can access cart items and perform order-related operations here
                    // For example:
                    // _cart.items.forEach((item) {
                    //   print('Product: ${item.productName}, Quantity: ${item.quantity}');
                    // });
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
