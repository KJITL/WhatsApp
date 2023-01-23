import 'package:flutter/material.dart';
import 'package:whastapp/colors.dart';

import '../Widgets/contact_list.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 61,
          backgroundColor: appBarColor,
          elevation: 0,
          title: const Text(
            'WhatsApp',
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 25),
          ),
          actions: [
            // search icon
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search, color: Colors.grey, size: 28),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert, color: Colors.grey, size: 28),
            ),
          ],
          bottom: const TabBar(
            indicatorColor: tabColor,
            indicatorWeight: 4,
            labelColor: tabColor,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            tabs: [
              Tab(
                text: 'CHATS',
              ),
              Tab(
                text: 'STATUS',
              ),
              Tab(
                text: 'CALLS',
              ),
            ],
          ),
        ),
        body: const ContactList(),
      ),
    );
  }
}
