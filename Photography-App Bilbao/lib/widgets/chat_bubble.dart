// File: lib/widgets/chat_bubble.dart
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String text;
  final bool _isMe;

  /// Accepts either `isMe` or `isSender` (some of the files used different names).
  const ChatBubble({
    Key? key,
    required this.text,
    bool? isMe,
    bool? isSender,
  })  : _isMe = isMe ?? isSender ?? false,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final alignment = _isMe ? Alignment.centerRight : Alignment.centerLeft;
    final bubbleColor = _isMe ? Colors.blue[200] : Colors.grey[300];

    return Align(
      alignment: alignment,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: bubbleColor,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(12),
            topRight: const Radius.circular(12),
            bottomLeft: _isMe ? const Radius.circular(12) : Radius.zero,
            bottomRight: _isMe ? Radius.zero : const Radius.circular(12),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
