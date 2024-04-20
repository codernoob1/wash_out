
import 'package:flutter/material.dart';
import 'package:wash_out/pages/cart.dart';
import 'package:wash_out/pages/my_recipt.dart';
import 'package:wash_out/services/database/firestore.dart';

class DeliveryPageProgress extends StatefulWidget {

  final Cart cart;
  const DeliveryPageProgress({Key? key, required this.cart}) : super(key: key);

  @override
  State<DeliveryPageProgress> createState() => _DeliveryPageProgressState();
}

class _DeliveryPageProgressState extends State<DeliveryPageProgress> {
  late String receipt;
  //get acces to db
  FirestoreService db = FirestoreService();
  

  void initState() {
    super.initState();

    // Submit order to Firestore database when the page is initialized
    receipt = widget.cart.displayReceipt(); // Call displayReceipt from the Cart instance
    db.saveOrderToDatabase(receipt);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Delivery Page Progress"),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [MyReceipt()],
      ),
    );
  }
}
