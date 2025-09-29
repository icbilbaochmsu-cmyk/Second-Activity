import 'package:flutter/material.dart';
import '../widgets/chat_bubble.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat with Photographer"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Chat bubbles example
            const ChatBubble(
              text: "Hello! I'm interested in booking a photoshoot.",
              isMe: false,
            ),
            const ChatBubble(
              text:
                  "Hi! Sure, I’d love to help. What kind of photoshoot are you planning?",
              isMe: true,
            ),
            const ChatBubble(
              text: "A portrait session for my graduation.",
              isMe: false,
            ),

            const Spacer(),

            // Input field (not functional, just UI)
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Type your message...",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.send),
                  color: Colors.blue,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
