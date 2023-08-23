import 'package:abhinav/Inventory/view/inventoryitems.dart';
import 'package:abhinav/barcodeCaptureScreen/domain/barcodeCapture.dart';
import 'package:abhinav/common/neubox.dart';
import 'package:abhinav/common/row.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // ignore: non_constant_identifier_names
  _AddToInventory() {
    Navigator.push(context,
        MaterialPageRoute(builder: (builder) => BarcodeScannerScreen()));
  }

  _itemsInInvenotry() {
    Navigator.push(
        context, MaterialPageRoute(builder: (ctx) => ItemsInIventory()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 250,
                    width: 200,
                    color: Colors.grey.shade300,
                    child: Image.asset(
                      'assets/icons/welcome.png',
                      width: 100,
                    ),
                  ),
                )
              ],
            ),
            const MyRow(),
            const SizedBox(
              height: 70,
            ),
            Row(
              children: [
                SizedBox(
                  height: 100,
                  width: 170,
                  child: NeuBox(
                    onTap: _itemsInInvenotry,
                    name: 'SEARCH ITEM',
                    icon: (Icons.search),
                  ),
                ),
                const SizedBox(
                  width: 35,
                ),
                SizedBox(
                  height: 100,
                  width: 170,
                  child: NeuBox(
                    onTap: _AddToInventory,
                    name: 'ADD TO INVENTORY',
                    icon: (Icons.add),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SizedBox(
                  height: 100,
                  width: 170,
                  child: NeuBox(
                    onTap: () {},
                    name: 'STOCKING',
                    icon: (Icons.personal_injury),
                  ),
                ),
                const SizedBox(
                  width: 35,
                ),
                SizedBox(
                  height: 100,
                  width: 170,
                  child: NeuBox(
                    onTap: () {},
                    name: 'DISPATCH',
                    icon: (Icons.delivery_dining),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void AddToInventory(context) {
  Navigator.push(
      context, MaterialPageRoute(builder: (builder) => BarcodeScannerScreen()));
}
