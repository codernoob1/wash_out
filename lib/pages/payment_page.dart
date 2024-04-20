import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:wash_out/pages/cart.dart';
import 'package:wash_out/pages/delivery_page.dart';
import 'package:wash_out/pages/my_button.dart';

class PaymentPage extends StatefulWidget {
  final Cart cart;
  const PaymentPage({Key? key, required this.cart}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;

  void userTappedPay() {
    if (formKey.currentState!.validate()) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: const Text("confirm payment"),
                content: SingleChildScrollView(
                  child: ListBody(
                    children: [
                      Text("Card Number: $cardNumber"),
                      Text("Expiry Date: $expiryDate"),
                      Text("Card Holder Name: $cardHolderName"),
                      Text("CVV: $cvvCode"),
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text("cancel")),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DeliveryPageProgress(cart: widget.cart),
                        ),
                      );
                    },
                    child: const Text("Yes"),
                  ),
                ],
              ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('CheckOut'),
      ),
      body: Column(
        children: [
          CreditCardWidget(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              showBackView: isCvvFocused,
              onCreditCardWidgetChange: (p0) {}),
          CreditCardForm(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              onCreditCardModelChange: (data) {
                cardNumber = data.cardNumber;
                expiryDate = data.expiryDate;
                cardHolderName = data.cardHolderName;
                cvvCode = data.cvvCode;
              },
              formKey: formKey),
          const Spacer(),
          MyButton(
            text: "Pay Now",
            onTap: userTappedPay,
          )
        ],
      ),
    );
  }
}
