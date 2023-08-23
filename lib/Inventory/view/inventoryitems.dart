import 'package:abhinav/Inventory/service/fetchdata.dart';
import 'package:abhinav/Inventory/widgets/qrdatawidget.dart';
import 'package:abhinav/barcodeCaptureScreen/model/barcode_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ItemsInIventory extends StatefulWidget {
  const ItemsInIventory({super.key});

  @override
  State<ItemsInIventory> createState() => _ItemsInIventoryState();
}

class _ItemsInIventoryState extends State<ItemsInIventory> {
  final FetchQRDataFromDB fetchQRDataFromDB = FetchQRDataFromDB();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          "I N V E N T O R Y",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey.shade300,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Items stored in inventory",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade600),
                  ),
                ),
              ],
            ),
            FutureBuilder(
              future: fetchQRDataFromDB.getQrData(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return const Center(
                    child: Text("Something went wrong..."),
                  );
                } else if (!snapshot.hasData) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return Expanded(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        // print(" Data is is");
                        print(snapshot.data);

                        Map<String, dynamic> qrDataMap = snapshot.data![index];
                        QrData qrData = QrData.fromMap(qrDataMap);
                        return QrDataWidget(
                          qrData: qrData,
                        );
                      },
                    ),
                  ),
                );
              },
            )
            // QrDataWidget(),
          ],
        ),
      ),
    );
  }
}
