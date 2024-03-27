import 'package:flutter/material.dart';
import 'package:ham_app/components/my_receipt.dart';
import 'package:ham_app/models/restaurant.dart';
import 'package:ham_app/services/database/firestore.dart';
import 'package:provider/provider.dart';

class DeliveryProgressPage extends StatefulWidget {
  const DeliveryProgressPage({super.key});

  @override
  State<DeliveryProgressPage> createState() => _DeliveryProgressPageState();
}

class _DeliveryProgressPageState extends State<DeliveryProgressPage> {
  FireStoreService db = FireStoreService();
  @override
  void initState() {
    super.initState();
    String receipt = context.read<Restaurant>().displayCardReceipt();
    db.saveOrderToDatabase(receipt);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, backgroundColor: Colors.transparent),
      body: const Column(
        children: [
          MyReceipt(),
        ],
      ),
    );
  }
}
