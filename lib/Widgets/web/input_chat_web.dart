import 'package:flutter/material.dart';

import '../../data/colors.dart';

class InputChatWeb extends StatelessWidget {
  const InputChatWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: MediaQuery.of(context).size.width * 0.75,
      height: MediaQuery.of(context).size.height * 0.07,
      color: chatBarMessage,

      child: Padding(
        padding: const EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
        child: Row(
          children: [
            // emoji icon
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.emoji_emotions_outlined,
                color: Colors.white60,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            // attach icon
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.attach_file,
                color: Colors.white60,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            // text field designed.
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(6),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: dividerColor),
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(14),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: searchBarColor,
                    hintText: 'Type a message',
                    hintStyle: const TextStyle(fontSize: 13),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.mic_outlined,
                color: Colors.white60,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
