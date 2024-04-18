// place_order_page.dart

// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wash_out/pages/go_to_cart.dart';

class PlaceOrderPage extends StatefulWidget {
  PlaceOrderPage(GoToCartPage cart);

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
              decoration: InputDecoration(labelText: 'Location'),
              onChanged: (value) {
                setState(() {
                  location = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(labelText: 'Order Instructions'),
              onChanged: (value) {
                setState(() {
                  orderInstructions = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(labelText: 'Preferred Pickup Time'),
              onChanged: (value) {
                setState(() {
                  preferredPickupTime = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(labelText: 'Coupon Code'),
              onChanged: (value) {
                setState(() {
                  couponCode = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            // Initialize with a default value

            DropdownButtonFormField(
              decoration: InputDecoration(labelText: 'Payment Option'),
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
                  // Implement logic for other payment options
                  // Show success message after payment
                  // For now, directly show order confirmation
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
