# QR Code Scanner and Inventory Management App

A Flutter app that allows users to scan QR codes, extract information, display it, and manage inventory data.

## Features

- Scan QR codes using the device's camera using the Scandit barcode scanner.
- Extract information from the scanned QR code, including transaction details and invoice information.
- Display the extracted data in a user-friendly format.
- Manage and view inventory items.
- Store and retrieve inventory data using Firebase Firestore.

## Modules Used

- **scandit_flutter_datacapture_barcode**: Used to integrate the Scandit barcode scanner functionality into the app.
- **firebase_core**: Provides Firebase Core functionality for initialization.
- **cloud_firestore**: Enables integration with Firebase Firestore for data storage and retrieval.
- **firebase_auth**: If authentication is required for data access.
- **intl**: For formatting date and time.

## Screenshots

Insert screenshots of your app in action.

## Setup and Usage

1. Clone the repository:
   [ https://github.com/irehmaan/Scandit-Barcode-Scanner.git]( https://github.com/irehmaan/Scandit-Barcode-Scanner.git
)
3. Navigate to the project directory:

4. Install dependencies:
  
5. Setup Firebase:

- Create a new Firebase project at [https://console.firebase.google.com/](https://console.firebase.google.com/).
- Add your Android and iOS apps to the Firebase project and follow the provided instructions for configuration.
- Download the `google-services.json` and `GoogleService-Info.plist` files and add them to the respective platform folders (`android/app` and `ios`).

5. Run the app:


## Contributing

Pull requests are welcome! For major changes, please open an issue first to discuss what you would like to change.
