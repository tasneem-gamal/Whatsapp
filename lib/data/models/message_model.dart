class MessageModel {
  final String id;
  final String senderId;
  final String text;
  final DateTime time;
  final bool isMe;
  final MessageType type;
  final bool isRead;

  MessageModel({
    required this.id,
    required this.senderId,
    required this.text,
    required this.time,
    required this.isMe,
    this.type = MessageType.text,
    this.isRead = false,
  });
}

enum MessageType {
  text,
  image,
  audio,
  video,
}

