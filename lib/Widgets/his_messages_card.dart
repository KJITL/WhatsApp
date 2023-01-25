import 'package:flutter/material.dart';

class HisMessageCard extends StatelessWidget {
  final String hisText;
  final String hisTime;
  const HisMessageCard({
    required this.hisText,
    required this.hisTime,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: Colors.red,
      width: MediaQuery.of(context).size.width * 0.2,
      child: Text("$hisText ,at: $hisTime"),
    );
  }
}
