import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:ham_app/components/my_button.dart';
import 'package:ham_app/pages/delivery_progess_page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

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
          title: Text("Confirm payment"),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text("Card Number: $cardNumber"),
                Text("Expiry Date: $expiryDate"),
                Text("Card Holder name: $cardHolderName"),
                Text("CVV: $cvvCode"),
              ],
            ),
          ),
          actions: [
            // cancel
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Cancel")),
            // yes
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DeliveryProgressPage(),
                    ),
                  );
                },
                child: const Text("Yes")),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Checkout"),
      ),
      body: Column(
        children: [
          //credit cart
          CreditCardWidget(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            showBackView: isCvvFocused,
            onCreditCardWidgetChange: (p0) => {},
          ),
          CreditCardForm(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              onCreditCardModelChange: (data) {
                setState(() {
                  cardNumber = data.cardNumber;
                  expiryDate = data.expiryDate;
                  cardHolderName = data.cardHolderName;
                  cvvCode = data.cvvCode;
                });
              },
              formKey: formKey),
          const Spacer(),
          MyButton(onTap: userTappedPay, text: "Pay now"),
          const SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}
