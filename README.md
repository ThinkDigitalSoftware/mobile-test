# mobile_test_app

A new Flutter project demoing QR Code scanning.

## Getting Started
To begin the demo, first cd to the mobile_test_server directory and run the server using
dart bin/main.dart. You will see output similar to:
```dart [INFO] aqueduct: Server aqueduct/1 started.  
[INFO] aqueduct: Server aqueduct/2 started.  
[INFO] aqueduct: Server aqueduct/3 started.  
[INFO] aqueduct: Server aqueduct/4 started. 
Application started on 192.168.254.11 port: 8888.
Use Ctrl-C (SIGINT) to stop running the application.
 ```

The server's IP address is printed in the console. 
(If you're not using a mac, you'll need to gather your IP address to enter into the app)

Once you have the IP address, you can enter it into the dialog that opens initially in the app.

## Design

The project is separated into 3 pages. Home, Scan, and QR.
Tap the FloatingActionButton to see the available options.

Selecting QR will take you to a page containing a code that was generated by the server.
Enabling the Auto refresh switch will toggle the auto refresh function of the app 
and will renew the QR code when it expires.

Selecting Scan will take you to a page that will allow you to scan a QR code
and verify it. A message will popup below with the results.
Only QR codes that have been generated by the app will validate. A sample QR code 
has been loading into the server for testing. You can scan it below to see the validation succeed
![Wikipedia's QR Code](mobile_test_app/wikipedia_qr.png)