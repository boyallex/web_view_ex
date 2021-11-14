import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
// import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WebViewPage(),
    );
  }
}

class WebViewPage extends StatelessWidget {
  const WebViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WebViewTest"),
        // backgroundColor: Colors.amberAccent,
        leading: Icon(
          Icons.menu,
        ),
      ),
      body: WebView(
        initialUrl:
            'https://lk.expoday.online/auth?vst=90264762A6660AFD3B5BE9ECAA59D45B',
        javascriptMode: JavascriptMode.unrestricted,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text("Help"),
      ),
    );
  }
}
