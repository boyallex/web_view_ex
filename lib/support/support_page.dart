import 'package:flutter/material.dart';
import 'package:web_view_ex/support/support_card.dart';

class SupportPage extends StatelessWidget {
  const SupportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff00497e),
        centerTitle: true,
        title:
            Text("GLOBAL CUSTOMER SUMMIT2021", style: TextStyle(fontSize: 14)),
        leading: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Color(0xff00497e),
              ),
            ),
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SupportCard(
                    position: "Overall guidance",
                    inf:
                        "tel. +7 903 363 72 15 galina.isaykina@volga-dnepr.com",
                    name: "Galina",
                    photo: "assets/fist_connect.jpeg",
                  ),
                  SupportCard(
                    position: "Summit program, accomondation",
                    inf:
                        "tel. +7 903 363 72 15 galina.isaykina@volga-dnepr.com",
                    name: "Olga",
                    photo: "assets/second_connect.jpeg",
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SupportCard(
                    position: "Summit program, accomondation",
                    inf:
                        "tel. +7 903 363 72 15 galina.isaykina@volga-dnepr.com",
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
      ),
    );
  }
}
