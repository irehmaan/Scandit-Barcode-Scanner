import 'package:abhinav/barcodeCaptureScreen/model/barcode_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class QrDataWidget extends StatelessWidget {
  final QrData qrData;
  QrDataWidget({super.key, required this.qrData});

  @override
  Widget build(BuildContext context) {
    // print(" Data is is");
    // print(qrData);
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        height: 290,
        decoration: BoxDecoration(
            color: Colors.grey.shade400,
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "DOC ID: "
                      "${qrData.transactionReference}",
                      style: TextStyle(fontSize: 18),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("invoiceTime: " "${qrData.invoiceTime}"),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        "transactionAmount " "${qrData.transactionAmount}"),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("invoiceNumber: " "${qrData.invoiceNumber}"),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("invoiceDate: " "${qrData.invoiceDate}"),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("payeeUPI: " "${qrData.payeeUPI}"),
                  )
                ],
              ),
              Row(
                children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "gstBreakdown: " "${qrData.gstBreakdown}",
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
