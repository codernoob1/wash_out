// import 'package:flutter/material.dart';
// import 'package:wash_out/pages/place_order.dart';
// import 'cart.dart';

// class GoToCartPage extends StatelessWidget {
//   final Cart cart;

//   const GoToCartPage({Key? key, required this.cart}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Cart'),
// //       ),
// //       body: Column(
// //         children: [
// //           Expanded(
// //             child: ListView.builder(
// //               itemCount: cart.itemCount,
// //               itemBuilder: (context, index) {
// //                 final item = cart.items[index];
// //                 return ListTile(
// //                   title: Text(item.productName),
// //                   subtitle: Text(item.description),
// //                   trailing: Row(
// //                     mainAxisSize: MainAxisSize.min,
// //                     children: [
// //                       Text('Quantity: ${item.quantity}'),
// //                       SizedBox(width: 10),
// //                       IconButton(
// //                         onPressed: () {
// //                           cart.removeFromCart(item.productName);
// //                         },
// //                         icon: Icon(Icons.remove_shopping_cart),
// //                       ),
// //                     ],
// //                   ),
// //                 );
// //               },
// //             ),
// //           ),
// //           SizedBox(height: 20), // Adjust spacing between the list and the button
// //           ElevatedButton(
// //             onPressed: () {
// //               // Navigate to another page here
// //               Navigator.push(
// //                 context,
// //                 MaterialPageRoute(builder: (context) => PlaceOrderPage(GoToCartPage(cart: cart))),
// //               );
// //             },
// //             child: Text('Place Order'),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:wash_out/pages/place_order.dart';
// import 'cart.dart';

// class GoToCartPage extends StatelessWidget {
//   final Cart cart;

//   const GoToCartPage({Key? key, required this.cart}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Cart'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: cart.itemCount,
//               itemBuilder: (context, index) {
//                 final item = cart.items[index];
//                 return ListTile(
//                   title: Text(item.productName),
//                   subtitle: Text(item.description),
//                   trailing: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Text('Quantity: ${item.quantity}'),
//                       SizedBox(width: 10),
//                       IconButton(
//                         onPressed: () {
//                           // Remove the item from the cart when delete button is pressed
//                           cart.removeFromCart(item.productName);
//                         },
//                         icon: Icon(Icons.delete),
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             ),
//           ),
//           // Total amount bar
//           Container(
//             color: Colors.grey[300],
//             padding: EdgeInsets.all(16),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   'Total Amount:',
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//                 Text(
//                   '\$${cart.total.toStringAsFixed(2)}', // Display the total amount
//                   style: TextStyle(fontSize: 18),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 20), // Adjust spacing between the list and the button
//           ElevatedButton(
//             onPressed: () {
//               // Navigate to the place order page
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => const PlaceOrderPage(cart: Cart,),
//               ));
//             },
//             child: Text('Place Order'),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:wash_out/pages/place_order.dart';
// import 'cart.dart';

// class GoToCartPage extends StatelessWidget {
//   final Cart cart;

//   const GoToCartPage({Key? key, required this.cart}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Cart'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: cart.itemCount,
//               itemBuilder: (context, index) {
//                 final item = cart.items[index];
//                 return ListTile(
//                   title: Text(item.productName),
//                   subtitle: Text(item.description),
//                   trailing: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Text('Quantity: ${item.quantity}'),
//                       SizedBox(width: 10),
//                       IconButton(
//                         onPressed: () {
//                           // Remove the item from the cart when delete button is pressed
//                           cart.removeFromCart(item.productName);
//                         },
//                         icon: Icon(Icons.delete),
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             ),
//           ),
//           // Total amount bar
//           Container(
//             color: Colors.grey[300],
//             padding: EdgeInsets.all(16),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   'Total Amount:',
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//                 Text(
//                   '\$${cart.totalAmount.toStringAsFixed(2)}', // Display the total amount
//                   style: TextStyle(fontSize: 18),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 20), // Adjust spacing between the list and the button
//           ElevatedButton(
//             onPressed: () {
//               // Navigate to the place order page
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => PlaceOrderPage(cart: cart)),
//               );
//             },
//             child: Text('Place Order'),
//           ),
//         ],
//       ),
//     );
//   }
// }
// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:wash_out/pages/cart.dart';
// import 'package:wash_out/pages/place_order.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class GoToCartPage extends StatefulWidget {
//   const GoToCartPage({Key? key}) : super(key: key);

//   @override
//   State<GoToCartPage> createState() => _GoToCartPageState();
// }

// class _GoToCartPageState extends State<GoToCartPage> {
//   Cart cart = Cart(); // Initialize an empty cart

//   @override
//   void initState() {
//     super.initState();
//     _loadCart(); // Load cart data from SharedPreferences on initialization
//   }

//   Future<void> _loadCart() async {
//     final prefs = await SharedPreferences.getInstance();
//     final cartData = prefs.getString('cart');
//     if (cartData != null) {
//       setState(() {
//         cart = Cart.fromJson(jsonDecode(cartData));
//       });
//     }
//   }

//   Future<void> _saveCart() async {
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.setString('cart', jsonEncode(cart));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Cart'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: cart.itemCount,
//               itemBuilder: (context, index) {
//                 final item = cart.items[index];
//                 return ListTile(
//                   title: Text(item.productName),
//                   subtitle: Text(item.description),
//                   trailing: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Text('Quantity: ${item.quantity}'),
//                       SizedBox(width: 10),
//                       IconButton(
//                         onPressed: () {
//                           setState(() {
//                             cart.removeFromCart(item.productName);
//                             _saveCart(); // Update SharedPreferences on removal
//                           });
//                         },
//                         icon: Icon(Icons.delete),
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             ),
//           ),
//           Container(
//             color: Colors.grey[300],
//             padding: EdgeInsets.all(16),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   'Total Amount:',
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//                 Text(
//                   '\$${cart.totalAmount.toStringAsFixed(2)}',
//                   style: TextStyle(fontSize: 18),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 20),
//           ElevatedButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => PlaceOrderPage(cart: cart),
//                 ),
//               );
//             },
//             child: Text('Place Order'),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:wash_out/pages/cart.dart';
import 'package:wash_out/pages/place_order.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GoToCartPage extends StatefulWidget {
  final Cart cart;
  const GoToCartPage({Key? key, required this.cart}) : super(key: key);

  @override
  State<GoToCartPage> createState() => _GoToCartPageState();
}

class _GoToCartPageState extends State<GoToCartPage> {
  late Cart cart; // Declare cart as late since it's initialized asynchronously


  @override
  void initState() {
    super.initState();
    cart = widget.cart; // Initialize with the cart passed through the constructor
    _loadCart(); // Load cart data from SharedPreferences on initialization
  }

  Future<void> _loadCart() async {
    final prefs = await SharedPreferences.getInstance();
    final cartData = prefs.getString('cart');
    if (cartData != null) {
      setState(() {
        cart = Cart.fromJson(jsonDecode(cartData));
      });
    }
  }

  Future<void> _saveCart() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('cart', jsonEncode(cart));
  }

  @override
  void dispose() {
    _saveCart(); // Save cart data when the page is disposed
    super.dispose();
  }

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
                          setState(() {
                            cart.removeFromCart(item.productName);
                          });
                        },
                        icon: Icon(Icons.delete),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            color: Colors.grey[300],
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Amount:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  '\$${cart.totalAmount.toStringAsFixed(2)}',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PlaceOrderPage(cart: cart),
                ),
              );
            },
            child: Text('Place Order'),
          ),
        ],
      ),
    );
  }
}

// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:wash_out/pages/cart.dart';
// import 'package:wash_out/pages/place_order.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class GoToCartPage extends StatefulWidget {
//   final Cart cart;
//   const GoToCartPage({Key? key, required this.cart}) : super(key: key);

//   @override
//   State<GoToCartPage> createState() => _GoToCartPageState();
// }

// class _GoToCartPageState extends State<GoToCartPage> {
//   late Cart cart; // Declare cart as late since it's initialized asynchronously

//   @override
//   void initState() {
//     super.initState();
//     cart = widget.cart; // Initialize with the cart passed through the constructor
//     _loadCart(); // Load cart data from SharedPreferences on initialization
//   }

//   Future<void> _loadCart() async {
//     final prefs = await SharedPreferences.getInstance();
//     final cartData = prefs.getString('cart');
//     if (cartData != null) {
//       setState(() {
//         cart = Cart.fromJson(jsonDecode(cartData));
//       });
//     }
//   }

//   Future<void> _saveCart() async {
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.setString('cart', jsonEncode(cart));
//   }

//   @override
//   void dispose() {
//     _saveCart(); // Save cart data when the page is disposed
//     super.dispose();
//   }

//   // Method to display the receipt
//   void displayReceipt() {
//     final receipt = StringBuffer();
//     receipt.writeln("Receipt");
//     receipt.writeln("Date: ${DateTime.now().toString()}");
//     receipt.writeln("----------------------------");

//     // Iterate over cart items to display details
//     for (final item in cart.items) {
//       receipt.writeln("${item.productName} - Quantity: ${item.quantity} - Total Price: ${item.price * item.quantity}");
//     }

//     receipt.writeln("----------------------------");
//     receipt.writeln("Total Amount: ${cart.totalAmount}");

//     // Show the receipt
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: Text("Receipt"),
//           content: Text(receipt.toString()),
//           actions: <Widget>[
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: Text('Close'),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Cart'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: cart.itemCount,
//               itemBuilder: (context, index) {
//                 final item = cart.items[index];
//                 return ListTile(
//                   title: Text(item.productName),
//                   subtitle: Text(item.description),
//                   trailing: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Text('Quantity: ${item.quantity}'),
//                       SizedBox(width: 10),
//                       IconButton(
//                         onPressed: () {
//                           setState(() {
//                             cart.removeFromCart(item.productName);
//                           });
//                         },
//                         icon: Icon(Icons.delete),
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             ),
//           ),
//           Container(
//             color: Colors.grey[300],
//             padding: EdgeInsets.all(16),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   'Total Amount:',
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//                 Text(
//                   '\$${cart.totalAmount.toStringAsFixed(2)}',
//                   style: TextStyle(fontSize: 18),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 20),
//           ElevatedButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => PlaceOrderPage(cart: cart),
//                 ),
//               );
//             },
//             child: Text('Place Order'),
//           ),
//           // SizedBox(height: 20),
//           // ElevatedButton(
//           //   onPressed: () {
//           //     // Call the displayReceipt method
//           //     displayReceipt();
//           //   },
//           //   child: Text('Show Receipt'),
//           // ),
//         ],
//       ),
//     );
//   }
// }
