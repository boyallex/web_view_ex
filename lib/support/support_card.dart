import 'package:flutter/material.dart';

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
      child: Column(
        children: [
          Container(
            child: Image(
              height: 150,
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
