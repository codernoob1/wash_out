// class CartItem {
//   final String productName;
//   final String description;
//   final double price;
//   int quantity;

//   CartItem({
//     required this.productName,
//     required this.description,
//     required this.price,
//     required this.quantity,
//   });
// }

// class Cart {
//   List<CartItem> _items = [];

//   List<CartItem> get items => List<CartItem>.unmodifiable(_items);

//   int get itemCount => _items.length;

//   double get total {
//     return _items.fold(0, (previousValue, item) => previousValue + (item.price * item.quantity));
//   }

//   void addToCart(CartItem item) {
//     // Check if the item already exists in the cart
//     final existingItemIndex = _items.indexWhere((existingItem) => existingItem.productName == item.productName);

//     if (existingItemIndex != -1) {
//       // If the item exists, update its quantity
//       _items[existingItemIndex].quantity += item.quantity;
//     } else {
//       // If the item does not exist, add it to the cart
//       _items.add(item);
//     }
//   }

//   void removeFromCart(String productName) {
//     final existingItemIndex = _items.indexWhere((item) => item.productName == productName);

//     if (existingItemIndex != -1) {
//       // If the item exists, remove it from the cart
//       _items.removeAt(existingItemIndex);
//     } else {
//       // If the item does not exist, throw an error
//       throw Exception('Item not found in cart.');
//     }
//   }

//   void updateQuantity(String productName, int newQuantity) {
//     final existingItem = _items.firstWhere((item) => item.productName == productName, orElse: () => throw Exception('Item not found in cart.'));

//     if (newQuantity > 0) {
//       // If the new quantity is valid, update the quantity of the item
//       existingItem.quantity = newQuantity;
//     } else {
//       // If the new quantity is invalid, throw an error
//       throw Exception('Invalid quantity.');
//     }
//   }

//   void clearCart() {
//     _items.clear();
//   }
// }
// import 'package:flutter/material.dart';

// import 'package:flutter/material.dart';

// class CartItem {
//   final String productName;
//   final String description;
//   final double price;
//   int quantity;

//   CartItem({
//     required this.productName,
//     required this.description,
//     required this.price,
//     required this.quantity,
//   });
// }

// class Cart extends ChangeNotifier  {
//   List<CartItem> _items = [];

//   List<CartItem> get items => List<CartItem>.unmodifiable(_items);

//   int get itemCount => _items.length;

//   double get totalAmount {
//     return _items.fold(0, (previousValue, item) => previousValue + (item.price * item.quantity));
//   }

//   double get total {
//     return _items.fold(0, (previousValue, item) => previousValue + item.price);
//   }

//   void addToCart(CartItem item) {
//     final existingItemIndex = _items.indexWhere((existingItem) => existingItem.productName == item.productName);

//     if (existingItemIndex != -1) {
//       _items[existingItemIndex].quantity += item.quantity;
//     } else {
//       _items.add(item);
//     }
//     notifyListeners();
//   }

//   void removeFromCart(String productName) {
//     _items.removeWhere((item) => item.productName == productName);
//     notifyListeners();
//   }

//   void updateQuantity(String productName, int newQuantity) {
//     if (newQuantity <= 0) {
//       removeFromCart(productName);
//     } else {
//       final existingItem = _items.firstWhere(
//         (item) => item.productName == productName,
//         orElse: () => throw Exception('Item not found in cart.'),
//       );
//       existingItem.quantity = newQuantity;
//       notifyListeners();
//     }
//   }

//   void clearCart() {
//     _items.clear();
//     notifyListeners();
//   }
// }
// import 'package:flutter/material.dart';

// class Item {
//   final String productName;
//   final String description;
//   final double price;
//   int quantity;

//   Item({
//     required this.productName,
//     required this.description,
//     required this.price,
//     this.quantity = 1, // Default quantity to 1
//   });

//   // Create a copy of the item with the specified quantity
//   Item copyWith({required int quantity}) {
//     return Item(
//       productName: this.productName,
//       description: this.description,
//       price: this.price,
//       quantity: quantity,
//     );
//   }
// }

// class Cart extends ChangeNotifier {
//   List<Item> items = []; // List to store cart items

//   void addItem(Item item) {
//     // Check if the item already exists in the cart
//     final existingItem = items.firstWhere((i) => i.productName == item.productName);
//     if (existingItem != null) {
//       existingItem.quantity++; // Increment quantity if it exists
//     } else {
//       items.add(item.copyWith(quantity: 1)); // Add a new item with quantity 1
//     }
//     notifyListeners(); // Notify listeners about changes in the cart
//   }

//   void removeFromCart(String productName) {
//     final index = items.indexWhere((item) => item.productName == productName);
//     if (index != -1) {
//       items.removeAt(index); // Remove the item from the cart
//       notifyListeners();
//     } else {
//       throw Exception('Item not found in cart.'); // Throw error if item not found
//     }
//   }

//   int get itemCount {
//     return items.length; // Return the total number of items in the cart
//   }

//   double get totalAmount {
//     double total = 0.0;
//     for (final item in items) {
//       total += item.price * item.quantity;
//     }
//     return total; // Calculate and return the total amount of the cart
//   }

//   double get total {
//     return items.fold(0, (previousValue, item) => previousValue + item.price); // Calculate total price without quantity
//   }

//   void updateQuantity(String productName, int newQuantity) {
//     final existingItem = items.firstWhere((item) => item.productName == productName, orElse: () => throw Exception('Item not found in cart.'));

//     if (newQuantity > 0) {
//       existingItem.quantity = newQuantity;
//       notifyListeners();
//     } else {
//       throw Exception('Invalid quantity.');
//     }
//   }

//   void clearCart() {
//     items.clear();
//     notifyListeners();
//   }
// }

import 'package:flutter/foundation.dart';

class Cart extends ChangeNotifier {
  Cart();
  Cart._internal(this._items);
  List<CartItem> _items = [];

  List<CartItem> get items => _items;

  double get totalAmount {
    double total = 0;
    for (var item in _items) {
      total += item.price * item.quantity;
    }
    return total;
  }

  int get itemCount => _items.length;

  void addToCart(CartItem item) {
    // Check if the item already exists in the cart
    for (var existingItem in _items) {
      if (existingItem.productName == item.productName) {
        existingItem.quantity += item.quantity;
        return;
      }
    }
    // If not found, add the item to the cart
    _items.add(item);
    print('Item added to cart: ${item.productName}');

  }

  void removeFromCart(String productName) {
    _items.removeWhere((item) => item.productName == productName);
  }

  void clearCart() {
    _items.clear();
  }

  // void updateQuantity(String productName, int newQuantity) {
  //   final cartItem = _items.firstWhere(
  //       (item) => item.productName == productName,
  //       orElse: () => );
  //   if (cartItem != null) {
  //     cartItem.quantity = newQuantity;
  //   }
  // }

  bool containsItem(String productName) {
    return _items.any((item) => item.productName == productName);
  }

  CartItem getItem(String productName) {
    final item = _items.firstWhere(
      (item) => item.productName == productName,
      orElse: () => CartItem(
        productName: '', // Provide default values for a null-like CartItem
        description: '',
        price: 0.0,
        quantity: 0,
      ),
    );

    if (item !=
        CartItem(
          productName: '', // Check if item is equal to the default CartItem
          description: '',
          price: 0.0,
          quantity: 0,
        )) {
      return item;
    } else {
      throw Exception("Item with productName '$productName' not found");
    }
  }

  static Cart fromJson(dynamic json) {
    List<dynamic> itemsJson = json['items'];
    List<CartItem> items =
        itemsJson.map((itemJson) => CartItem.fromJson(itemJson)).toList();
    return Cart._internal(items);
  }

  String displayReceipt() {
    final StringBuffer receipt = StringBuffer();
    receipt.writeln("Receipt");
    receipt.writeln("Date: ${DateTime.now().toString()}");
    receipt.writeln("----------------------------");
  print("Number of items in cart: ${_items.length}");
    // Iterate over cart items to display details
    for (final item in _items) {
      print("Item: $item");
      receipt.writeln("Item Name: ${item.productName}");
      receipt.writeln("Quantity: ${item.quantity}");
      receipt.writeln("Price: ${item.price}");
      receipt.writeln("Total Price: ${item.price * item.quantity}");
      receipt.writeln("----------------------------");
    }

    receipt.writeln("Total Amount: ${totalAmount}");
    print("totalprice: ${totalAmount}");

    return receipt.toString();
  }
}

class CartItem {
  final String productName;
  final String description;
  final double price;
  int quantity;

  CartItem({
    required this.productName,
    required this.description,
    required this.price,
    required this.quantity,
  });

  Map<String, dynamic> toJson() {
    return {
      'productName': productName,
      'description': description,
      'price': price,
      'quantity': quantity,
    };
  }
  factory CartItem.fromJson(Map<String, dynamic> json) {
    return CartItem(
      productName: json['productName'],
      description: json['description'],
      price: json['price'],
      quantity: json['quantity'],
    );
  }
}

// displayReceipt() 

// import 'package:flutter/material.dart';

// class CartItem {
//   final String productName;
//   final String description;
//   final double price;
//   int quantity;

//   CartItem({
//     required this.productName,
//     required this.description,
//     required this.price,
//     required this.quantity,
//   });
// }

// class Cart extends ChangeNotifier {
//   List<CartItem> _items = [];

//   List<CartItem> get items => List<CartItem>.unmodifiable(_items);

//   int get itemCount => _items.length;

//     double get totalAmount {
//     return _items.fold(0, (previousValue, item) => previousValue + (item.price * item.quantity));
//   }

//   double get total {
//     return _items.fold(0, (previousValue, item) => previousValue + item.price);
//   }

//   // double get total {
//   //   return _items.fold(0, (previousValue, item) => previousValue + (item.price * item.quantity));
//   // }

//   void addToCart(CartItem item) {
//     // Check if the item already exists in the cart
//     final existingItemIndex = _items.indexWhere((existingItem) => existingItem.productName == item.productName);

//     if (existingItemIndex != -1) {
//       // If the item exists, update its quantity
//       _items[existingItemIndex].quantity += item.quantity;
//     } else {
//       // If the item does not exist, add it to the cart
//       _items.add(item);
//     }
//   }

//   void removeFromCart(String productName) {
//     final existingItemIndex = _items.indexWhere((item) => item.productName == productName);

//     if (existingItemIndex != -1) {
//       // If the item exists, remove it from the cart
//       _items.removeAt(existingItemIndex);
//     } else {
//       // If the item does not exist, throw an error
//       throw Exception('Item not found in cart.');
//     }
//   }

//   void updateQuantity(String productName, int newQuantity) {
//     final existingItem = _items.firstWhere((item) => item.productName == productName, orElse: () => throw Exception('Item not found in cart.'));

//     if (newQuantity > 0) {
//       // If the new quantity is valid, update the quantity of the item
//       existingItem.quantity = newQuantity;
//     } else {
//       // If the new quantity is invalid, throw an error
//       throw Exception('Invalid quantity.');
    
//     }
//   }

//   void clearCart() {
//     _items.clear();
//     notifyListeners();
//   }
// }