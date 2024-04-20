import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  //get collection of orders
  final CollectionReference orders =
      FirebaseFirestore.instance.collection('orders');

  //save order to db
  Future<void> saveOrderToDatabase(String recipt) async {
    await orders.add({
      'date': DateTime.now(),
      'order' : recipt,
    });
  }
}
