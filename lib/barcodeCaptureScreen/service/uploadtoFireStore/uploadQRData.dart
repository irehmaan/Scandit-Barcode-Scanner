import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class UploadToFireStore {
  Future<void> uploadQRData(Map<String, dynamic> qrData) async {
    CollectionReference qrDataCollection =
        FirebaseFirestore.instance.collection("QR_Data");

    // Generating a UID using Transaction Reference and current timestamp
    String tranRef = qrData['transactionReference'];
    DateTime currentTime = DateTime.now();
    String docID = '$tranRef'
        '-${currentTime.hour}:${currentTime.minute}:${currentTime.second}';

    // upload the qr data with generated UID

    await qrDataCollection.doc(docID).set(qrData);
  }
}
