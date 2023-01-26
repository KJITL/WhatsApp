import 'package:flutter/material.dart';

import '../../data/info.dart';
import '../message/his_messages_card.dart';
import '../message/my_messages_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: messages.length,
      itemBuilder: (context, int index) {
        if (messages[index]['isMe'] == true) {
          return MyMessageCard(
              myText: messages[index]['text'].toString(),
              myTime: messages[index]['time'].toString());
        }
        return HisMessageCard(
          hisText: messages[index]['text'].toString(),
          hisTime: messages[index]['time'].toString(),
        );
      },
    );
  }
}
