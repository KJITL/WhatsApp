import 'package:flutter/material.dart';
import 'package:whastapp/colors.dart';

class MyMessageCard extends StatelessWidget {
  final String myText;
  final String myTime;
  const MyMessageCard({super.key, 
    required this.myText,
    required this.myTime,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width - 45),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          color: messageColor,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: null,
        ),
      ),
    );
  }
}
