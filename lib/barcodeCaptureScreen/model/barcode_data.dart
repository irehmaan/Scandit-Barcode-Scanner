class QrData {
  late String payeeUPI;
  late String transactionReference;
  late String transactionAmount;
  late String gstBreakdown;
  late String invoiceNumber;
  late String invoiceDate;
  late String invoiceTime;

  QrData(String data) {
    List<String> list = data.split('&');
    Map<String, String> qrDataMap = {};

    for (String x in list) {
      List<String> keyValue = x.split('=');
      if (keyValue.length == 2) {
        qrDataMap[keyValue[0]] = keyValue[1];
      }
    }

    payeeUPI = qrDataMap['pa'] ?? '';
    transactionReference = qrDataMap['tr'] ?? '';
    transactionAmount = qrDataMap['am'] ?? '';
    gstBreakdown = qrDataMap['gstBrkUp'] ?? '';
    invoiceNumber = qrDataMap['invoiceNo'] ?? '';
    invoiceDate = qrDataMap['invoiceDate'] ?? '';
    invoiceTime = qrDataMap['InvoiceDate'] ?? '';
  }

  QrData.fromMap(Map<String, dynamic> qrDataMap) {
    payeeUPI = qrDataMap['payeeUPI'] ?? '';
    transactionReference = qrDataMap['transactionReference'] ?? '';
    transactionAmount = qrDataMap['transactionAmount'] ?? '';
    gstBreakdown = qrDataMap['gstBreakdown'] ?? '';
    invoiceNumber = qrDataMap['invoiceNumber'] ?? '';
    invoiceDate = qrDataMap['invoiceDate'] ?? '';
    invoiceTime = qrDataMap['invoiceTime'] ?? '';
  }

  Map<String, dynamic> toJson() {
    return {
      'payeeUPI': payeeUPI,
      'transactionReference': transactionReference,
      'transactionAmount': transactionAmount,
      'gstBreakdown': gstBreakdown,
      'invoiceNumber': invoiceNumber,
      'invoiceDate': invoiceDate,
      'invoiceTime': invoiceTime,
    };
  }
}
