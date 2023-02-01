import 'package:flutter/material.dart';
import 'package:whastapp/data/colors.dart';

import 'package:whastapp/data/info.dart';
import 'package:whastapp/screens/mobile_chat_screen.dart';

class ContactList extends StatelessWidget {
  final bool isMobile;
  const ContactList({super.key, required this.isMobile});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: info.length,
      itemBuilder: (context, int index) {
        return Column(
          children: [
            InkWell(
              onTap: () {
                if(isMobile){
                  Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MobileChatPage(
                      userName: info[index]['name'].toString(),
                      userPhoto: info[index]['profilePic'].toString(),
                    ),
                  ),
                );
                }
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 6, 0, 6),
                child: ListTile(
                  title: Text(info[index]['name'].toString(),
                      style: const TextStyle(fontSize: 18)),
                  subtitle: Text(info[index]['message'].toString(),
                      style: const TextStyle(fontSize: 15)),
                  leading: CircleAvatar(
                    backgroundImage:
                        NetworkImage(info[index]['profilePic'].toString()),
                    radius: 30,
                  ),
                  trailing: Text(info[index]['time'].toString(),
                      style: const TextStyle(fontSize: 13, color: Colors.grey)),
                ),
              ),
            ),
            const Divider(
              color: dividerColor,
              indent: 85,
            ),
          ],
        );
      },
    );
  }
}
