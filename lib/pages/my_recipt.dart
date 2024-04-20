// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:wash_out/pages/cart.dart';
// import 'package:wash_out/pages/resturant.dart';

// class MyReceipt extends StatelessWidget {
//   const MyReceipt({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     // Access the cart using Provider
//     final cart = Provider.of<Cart>(context);

//     return Padding(
//       padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25, top: 50),
//       child: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text('Thank you for your order!'),
//             const SizedBox(height: 25,),
//             Container(
//               decoration: BoxDecoration(
//                 border: Border.all(color: Theme.of(context).colorScheme.secondary),
//               ),
//               padding: const EdgeInsets.all(25),
//               child: Text(
//                 displayCartReceipt(cart),
              
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wash_out/pages/cart.dart';


class MyReceipt extends StatelessWidget {
  const MyReceipt({Key? key});

  @override
  Widget build(BuildContext context) {
    // Access the cart using Provider
    final cart = Provider.of<Cart>(context);

    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25, top: 50),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Thank you for your order!'),
            const SizedBox(height: 25,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Theme.of(context).colorScheme.secondary),
              ),
              padding: const EdgeInsets.all(25),
              child: Text(
                cart.displayReceipt(), // Call the displayReceipt method of the cart
              ),
            )
          ],
        ),
      ),
    );
  }
}
