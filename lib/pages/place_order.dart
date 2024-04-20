// // place_order_page.dart

// // ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:wash_out/pages/cart.dart';
// // import 'package:wash_out/pages/go_to_cart.dart';
// import 'package:wash_out/pages/payment_page.dart';

// class PlaceOrderPage extends StatefulWidget {
//   // final Cart cart;

//   // PlaceOrderPage(this.cart);
//   // const PlaceOrderPage(GoToCartPage cart);
//   final Cart cart;

//   const PlaceOrderPage({Key? key, required this.cart}) : super(key: key);

//   @override
//   _PlaceOrderPageState createState() => _PlaceOrderPageState();
// }

// class _PlaceOrderPageState extends State<PlaceOrderPage> {
//   String selectedPaymentOption = 'Cash on Delivery';
//   String location = '';
//   String orderInstructions = '';
//   String preferredPickupTime = '';
//   String couponCode = '';
//   String paymentOption = '';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Place Order'),
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             TextFormField(
//               decoration: InputDecoration(labelText: 'Location'),
//               onChanged: (value) {
//                 setState(() {
//                   location = value;
//                 });
//               },
//             ),
//             SizedBox(height: 16.0),
//             TextFormField(
//               decoration: InputDecoration(labelText: 'Order Instructions'),
//               onChanged: (value) {
//                 setState(() {
//                   orderInstructions = value;
//                 });
//               },
//             ),
//             SizedBox(height: 16.0),
//             TextFormField(
//               decoration: InputDecoration(labelText: 'Preferred Pickup Time'),
//               onChanged: (value) {
//                 setState(() {
//                   preferredPickupTime = value;
//                 });
//               },
//             ),
//             SizedBox(height: 16.0),
//             TextFormField(
//               decoration: InputDecoration(labelText: 'Coupon Code'),
//               onChanged: (value) {
//                 setState(() {
//                   couponCode = value;
//                 });
//               },
//             ),
//             SizedBox(height: 16.0),
//             // Initialize with a default value

//             DropdownButtonFormField(
//               decoration: InputDecoration(labelText: 'Payment Option'),
//               value: selectedPaymentOption,
//               items: const [
//                 DropdownMenuItem(
//                   value: 'Cash on Delivery',
//                   child: Text('Cash on Delivery'),
//                 ),
//                 DropdownMenuItem(
//                   value: 'Debit Card/Credit Card',
//                   child: Text('Debit Card/Credit Card'),
//                 ),
//                 DropdownMenuItem(
//                   value: 'UPI',
//                   child: Text('UPI'),
//                 ),
//               ],
//               onChanged: (value) {
//                 setState(() {
//                   // Update the selected payment option only if a valid option is selected
//                   selectedPaymentOption = value as String;
//                 });
//               },
//             ),
//             SizedBox(height: 32.0),
//             ElevatedButton(
//               onPressed: () {
//                 // Implement logic for placing the order
//                 if (paymentOption == 'Cash on Delivery') {
//                   // Show order confirmation for cash on delivery
//                   showDialog(
//                     context: context,
//                     builder: (context) => AlertDialog(
//                       title: Text('Order Placed'),
//                       content: Text('Your order has been placed successfully.'),
//                       actions: [
//                         TextButton(
//                           onPressed: () {
//                             Navigator.pop(context);
//                           },
//                           child: Text('OK'),
//                         ),
//                       ],
//                     ),
//                   );
//                 } else {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => PaymentPage()));
//                   // Implement logic for other payment options
//                   // Show success message after payment
//                   // For now, directly show order confirmation
//                   // showDialog(
//                   //   context: context,
//                   //   builder: (context) => AlertDialog(
//                   //     title: Text('Order Placed'),
//                   //     content: Text('Your order has been placed successfully.'),
//                   //     actions: [
//                   //       TextButton(
//                   //         onPressed: () {
//                   //           Navigator.pop(context);
//                   //         },
//                   //         child: Text('OK'),
//                   //       ),
//                   //     ],
//                   //   ),
//                   // );
//                 }
//               },
//               child: Text('Place Order'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:wash_out/pages/cart.dart';
import 'package:wash_out/pages/payment_page.dart';

class PlaceOrderPage extends StatefulWidget {
  final Cart cart;

  const PlaceOrderPage({Key? key, required this.cart}) : super(key: key);

  @override
  _PlaceOrderPageState createState() => _PlaceOrderPageState();
}

class _PlaceOrderPageState extends State<PlaceOrderPage> {
  String selectedPaymentOption = 'Cash on Delivery';
  String location = '';
  String orderInstructions = '';
  String preferredPickupTime = '';
  String couponCode = '';
  String paymentOption = '';

  final _locationController = TextEditingController();
  final _orderInstructionsController = TextEditingController();
  final _preferredPickupTimeController = TextEditingController();
  final _couponCodeController = TextEditingController();

  @override
  void dispose() {
    _locationController.dispose();
    _orderInstructionsController.dispose();
    _preferredPickupTimeController.dispose();
    _couponCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Place Order'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: _locationController,
              decoration: InputDecoration(labelText: 'Location *'),
              onChanged: (value) {
                setState(() {
                  location = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _orderInstructionsController,
              decoration: InputDecoration(labelText: 'Order Instructions *'),
              onChanged: (value) {
                setState(() {
                  orderInstructions = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _preferredPickupTimeController,
              decoration: InputDecoration(labelText: 'Preferred Pickup Time *'),
              onChanged: (value) {
                setState(() {
                  preferredPickupTime = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _couponCodeController,
              decoration: InputDecoration(labelText: 'Coupon Code *'),
              onChanged: (value) {
                setState(() {
                  couponCode = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            // Initialize with a default value
            DropdownButtonFormField(
              decoration: InputDecoration(labelText: 'Payment Option *'),
              value: selectedPaymentOption,
              items: const [
                DropdownMenuItem(
                  value: 'Cash on Delivery',
                  child: Text('Cash on Delivery'),
                ),
                DropdownMenuItem(
                  value: 'Debit Card/Credit Card',
                  child: Text('Debit Card/Credit Card'),
                ),
                DropdownMenuItem(
                  value: 'UPI',
                  child: Text('UPI'),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  // Update the selected payment option only if a valid option is selected
                  selectedPaymentOption = value as String;
                });
              },
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                // Implement logic for placing the order
                if (_locationController.text.isNotEmpty &&
                    _orderInstructionsController.text.isNotEmpty &&
                    _preferredPickupTimeController.text.isNotEmpty &&
                    _couponCodeController.text.isNotEmpty) {
                  if (paymentOption == 'Cash on Delivery') {
                    // Show order confirmation for cash on delivery
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Order Placed'),
                        content: Text('Your order has been placed successfully.'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('OK'),
                          ),
                        ],
                      ),
                    );
                  } else {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PaymentPage(cart: Cart(),)));
                  }
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Please fill all mandatory fields.'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                }
              },
              child: Text('Place Order'),
            ),
          ],
        ),
      ),
    );
  }
}
