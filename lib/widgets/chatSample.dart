import 'package:flutter/material.dart';
import 'package:custom_clippers/custom_clippers.dart';

class ChatSample extends StatelessWidget {
  const ChatSample(
      {super.key,
      required this.colors,
      required this.isMe,
      required this.message});

  final colors;
  final bool isMe;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(right: 20, bottom: 20),
        child: ClipPath(
          clipper: isMe
              ? UpperNipMessageClipper(MessageType.send)
              : UpperNipMessageClipper(MessageType.receive),
          child: Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
                color: isMe ? const Color(0xFF113953) : Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 12,
                    offset: const Offset(3, 3),
                  ),
                ]),
            child: Center(
                child: Text(
              message,
              style: TextStyle(
                  color: isMe ? Colors.white : Colors.black, fontSize: 25),
            )),
          ),
        ),
      ),
    );
  }
}
