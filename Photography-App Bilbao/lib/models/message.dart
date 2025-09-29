class Message {
  final String text;
  final bool isMe;

  Message({
    required this.text,
    required this.isMe,
  });
}

// Example chat messages
List<Message> sampleMessages = [
  Message(
    text: "Hello! I'm interested in booking a photoshoot.",
    isMe: false,
  ),
  Message(
    text:
        "Hi! Sure, I’d love to help. What kind of photoshoot are you planning?",
    isMe: true,
  ),
  Message(
    text: "A portrait session for my graduation.",
    isMe: false,
  ),
];
