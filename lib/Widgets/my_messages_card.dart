import 'package:flutter/material.dart';

class MyMessageCard extends StatelessWidget {
  final String myText;
  final String myTime;
  const MyMessageCard({
    required this.myText,
    required this.myTime,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: Colors.green,
      width: MediaQuery.of(context).size.width * 0.2,
      child: Text("$myText ,at: $myTime"),
    );
  }
}
