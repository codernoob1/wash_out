// import 'package:intl/intl.dart';
// import 'cart.dart';

// String displayCartReceipt(Cart cart) {
//   final receipt = StringBuffer();
//   receipt.writeln("Here's your receipt.");
//   receipt.writeln();

//   String formattedDate =
//       DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

//   receipt.writeln(formattedDate);
//   receipt.writeln();
//   receipt.writeln("----------------");

//   for (final item in cart.items) {
//     receipt.writeln("${item.quantity} x ${item.productName}: ${_formatPrice(item.price * item.quantity)}");
//   }

//   receipt.writeln("----------------");
//   receipt.writeln("Total: ${_formatPrice(cart.totalAmount)}");

//   print("Number of items in cart: ${cart.items.length}");


//   return receipt.toString();
// }

// // Format double value into money
// String _formatPrice(double price) {
//   return "\$${price.toStringAsFixed(2)}";
// }

import 'package:intl/intl.dart';
import 'cart.dart';

String displayCartReceipt(Cart cart) {
  final receipt = StringBuffer();
  receipt.writeln("Here's your receipt.");
  receipt.writeln();

  String formattedDate =
      DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

  receipt.writeln(formattedDate);
  receipt.writeln();
  receipt.writeln("----------------");

  for (final item in cart.items) {
    receipt.writeln("${item.quantity} x ${item.productName}: ${_formatPrice(item.price * item.quantity)}");
  }

  receipt.writeln("----------------");
  receipt.writeln("Total: ${_formatPrice(cart.totalAmount)}");

  print("Number of items in cart: ${cart.items.length}");

  return receipt.toString();
}

// Format double value into money
String _formatPrice(double price) {
  return "\$${price.toStringAsFixed(2)}";
}


