import 'package:flutter/material.dart';
import 'package:stful_wid/brain/chat_brain.dart';
import 'package:stful_wid/widgets/chatSample.dart';

class Chat extends StatelessWidget {
  Chat({super.key});

  final List myChatBrain = [
    ChatBrain(isMe: true, message: 'Hello, How are you?'),
    ChatBrain(isMe: false, message: 'I am fine, And you???'),
    ChatBrain(isMe: true, message: 'Hello, How are you?'),
    ChatBrain(isMe: false, message: 'I am fine, And you???'),
    ChatBrain(isMe: true, message: 'Hello, How are you?'),
    ChatBrain(isMe: false, message: 'I am fine, And you???'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: AppBar(
            leadingWidth: 30,
            title: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(65),
                  child: Image.asset(
                    'images/user.jpg',
                    height: 65,
                    width: 45,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Ali Jawad',
                  style: TextStyle(color: Color(0xFF113953), fontSize: 25),
                ),
              ],
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 14.0),
                child: Icon(Icons.phone),
              ),
              Padding(
                padding: EdgeInsets.only(right: 14.0),
                child: Icon(Icons.video_call),
              ),
              Padding(
                padding: EdgeInsets.only(right: 14.0),
                child: Icon(Icons.more_vert),
              ),
            ],
          ),
        ),
      ),
      body: ListView.builder(
          padding:
              const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 80),
          itemCount: myChatBrain.length,
          itemBuilder: (context, index) {
            return ChatSample(
                message: myChatBrain[index].message,
                colors: myChatBrain[index].isMe!,
                isMe: myChatBrain[index].isMe!);
          }),
    );
  }
}
