import 'package:flutter/material.dart';

import 'package:whastapp/info.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: info.length,
      itemBuilder: (context, int index) {
        return ListTile(
          title: Text(info[index]['name'].toString(),
              style: const TextStyle(fontSize: 18)),
          subtitle: Text(info[index]['message'].toString(),
              style: const TextStyle(fontSize: 15)),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(info[index]['profilePic'].toString()),
          ),
          trailing: Text(info[index]['time'].toString()),
        );
      },
    );
  }
}
