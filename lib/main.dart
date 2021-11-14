import 'package:flutter/material.dart';
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
        title: Text("VolgaDnepr"),
      ),
      body: WebView(
        initialUrl: 'https://lk.expoday.online/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
      floatingActionButton: FloatingActionButton(
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

class SupportPage extends StatelessWidget {
  const SupportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("VolgaDnepr"),
        leading: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_new,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          right: 10,
          top: 10,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SupportCard(
                  position: "Overall guidance",
                  inf: "tel. +7 903 363 72 15 galina.isaykina@volga-dnepr.com",
                  name: "Galina",
                  photo: "assets/fist_connect.jpeg",
                ),
                SupportCard(
                  position: "Summit program, accomondation",
                  inf: "tel. +7 903 363 72 15 galina.isaykina@volga-dnepr.com",
                  name: "Olga",
                  photo: "assets/second_connect.jpeg",
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SupportCard(
                  position: "Summit program, accomondation",
                  inf: "tel. +7 903 363 72 15 galina.isaykina@volga-dnepr.com",
                  name: "Anastasia",
                  photo: "assets/third_connect.png",
                ),
                SupportCard(
                  position: "",
                  inf: "global-vd@volga-dnepr.com",
                  name: "It Support",
                  photo: "assets/connect.png",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SupportCard extends StatelessWidget {
  final String photo;
  final String inf;
  final String name;
  final String position;
  SupportCard({
    required this.position,
    required this.inf,
    required this.photo,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      width: 165,
      height: 190,
      child: Column(
        children: [
          Container(
            child: Image(
              image: AssetImage(
                photo,
              ),
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5,
                ),
                Text(
                  name,
                  style: TextStyle(
                      color: Colors.blue.shade900,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  inf,
                  style: TextStyle(
                    fontSize: 15.5,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  position,
                  style: TextStyle(
                    fontSize: 15.5,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
