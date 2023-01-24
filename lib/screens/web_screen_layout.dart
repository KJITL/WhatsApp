import 'package:flutter/material.dart';
import 'package:whastapp/Widgets/contact_list.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // left side
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  //profile bar
                  //search bar
                  ContactList(),
                ],
              ),
            ),
          ),
          // Right chat background
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/backgroundImage.png"),
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
