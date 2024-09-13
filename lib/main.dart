 import 'package:flutter/material.dart';
 import 'package:webview_flutter/webview_flutter.dart';

 void main() {
   runApp(MyApp());
 }

 class MyApp extends StatefulWidget {
   @override
   _MyAppState createState() => _MyAppState();
 }

 class _MyAppState extends State<MyApp> {
   @override
   void initState() {
     super.initState();
     // Enable hybrid composition.
     WebView.platform = SurfaceAndroidWebView();
   }

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home: Scaffold(
         appBar: AppBar(
           title: Text('Flopless WebView'),
         ),
         body: WebView(
           initialUrl: 'https://flopless.co.za',
           javascriptMode: JavascriptMode.unrestricted,
         ),
       ),
     );
   }
 }
