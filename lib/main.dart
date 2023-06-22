import 'package:flutter/material.dart';
import 'package:webview_flutterapp/mywebsite.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWebView(),
    );
  }
}

class MyWebView extends StatelessWidget {
  const MyWebView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WebView'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>MyWebsite()));
          },
          child: Text('Show Website'),
        ),
      ),
    );
  }
}

