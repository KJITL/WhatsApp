import 'package:flutter/material.dart';
import 'package:whastapp/Widgets/both/chat_list.dart';
import 'package:whastapp/Widgets/both/contact_list.dart';

import '../Widgets/web/input_chat_web.dart';
import '../Widgets/web/web_chat_bar.dart';
import '../Widgets/web/web_profile.dart';
import '../Widgets/web/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // left side "Contact list with its bar"
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  WebProfileBar(),
                  SearchBar(),
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
            child: Column(
              children: const [
                WebChatBar(),
                ChatList(),
                InputChatWeb(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
