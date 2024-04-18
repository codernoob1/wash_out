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
}

class Cart {
  List<CartItem> _items = [];

  List<CartItem> get items => List<CartItem>.unmodifiable(_items);

  int get itemCount => _items.length;

  double get total {
    return _items.fold(0, (previousValue, item) => previousValue + (item.price * item.quantity));
  }

  void addToCart(CartItem item) {
    // Check if the item already exists in the cart
    final existingItemIndex = _items.indexWhere((existingItem) => existingItem.productName == item.productName);

    if (existingItemIndex != -1) {
      // If the item exists, update its quantity
      _items[existingItemIndex].quantity += item.quantity;
    } else {
      // If the item does not exist, add it to the cart
      _items.add(item);
    }
  }

  void removeFromCart(String productName) {
    final existingItemIndex = _items.indexWhere((item) => item.productName == productName);

    if (existingItemIndex != -1) {
      // If the item exists, remove it from the cart
      _items.removeAt(existingItemIndex);
    } else {
      // If the item does not exist, throw an error
      throw Exception('Item not found in cart.');
    }
  }

  void updateQuantity(String productName, int newQuantity) {
    final existingItem = _items.firstWhere((item) => item.productName == productName, orElse: () => throw Exception('Item not found in cart.'));

    if (newQuantity > 0) {
      // If the new quantity is valid, update the quantity of the item
      existingItem.quantity = newQuantity;
    } else {
      // If the new quantity is invalid, throw an error
      throw Exception('Invalid quantity.');
    }
  }

  void clearCart() {
    _items.clear();
  }
}
