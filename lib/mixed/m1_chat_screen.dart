import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Faizan",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Icon(Icons.call),
          SizedBox(width: 15),
        ],
      ),
      body: ListView(
        children: const [
          ChatBubble(
            text: "Hey!",
            isCurrentUser: true,
          ),
          ChatBubble(
            text: "Hey!",
            isCurrentUser: false,
          ),
          ChatBubble(
            text: "How are you",
            isCurrentUser: true,
          ),
          ChatBubble(
            text: "I am fine what about you",
            isCurrentUser: false,
          ),
        ],
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isCurrentUser;
  const ChatBubble(
      {super.key, required this.text, required this.isCurrentUser});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        isCurrentUser ? 64.0 : 16.0,
        4,
        isCurrentUser ? 16.0 : 64.0,
        4,
      ),
      child: Column(
        crossAxisAlignment:
            isCurrentUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Align(
            alignment:
                isCurrentUser ? Alignment.centerRight : Alignment.centerLeft,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: isCurrentUser
                    ? const Color(0xffFFCD07)
                    : const Color(0xFFECEAEA),
                borderRadius: isCurrentUser
                    ? const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(4),
                      )
                    : const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                        bottomLeft: Radius.circular(4),
                        bottomRight: Radius.circular(16),
                      ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  text,
                  style: const TextStyle(
                    color: Color(0xff1e1e1e),
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "02:59 PM",
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
          ),
        ],
      ),
    );
  }
}
