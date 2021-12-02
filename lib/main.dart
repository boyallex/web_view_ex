import 'dart:io';
import 'package:flutter/material.dart';
import 'package:web_view_ex/support/support_page.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue, backgroundColor: Colors.grey.shade100),
      home: MainPage(),
     );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff00497e),
        centerTitle: true,
        title: Text("GLOBAL CUSTOMER SUMMIT2021", style: TextStyle(fontSize: 14)) 
      ),
      body: WebView(
        initialUrl:
            'https://lk.expoday.online/auth?vst=90264762A6660AFD3B5BE9ECAA59D45B',
        javascriptMode: JavascriptMode.unrestricted,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff00497e),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) {
                return SupportPage();
              },
            ),
          );
        },
        child: Text("Help"),
      ),
    );
  }
}

