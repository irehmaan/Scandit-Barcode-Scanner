import 'package:cloud_firestore/cloud_firestore.dart';

class FetchQRDataFromDB {
  final CollectionReference _qrDataCollection =
      FirebaseFirestore.instance.collection('QR_Data');

  Future<List<Map<String, dynamic>>> getQrData() async {
    QuerySnapshot querySnapshot = await _qrDataCollection.get();

    List<Map<String, dynamic>> qrDataList = [];
    querySnapshot.docs.forEach((doc) {
      qrDataList.add(doc.data() as Map<String, dynamic>);
    });
    // print(" is");
    // print(qrDataList);
    return qrDataList;
  }
}
