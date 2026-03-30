import 'package:cloud_firestore/cloud_firestore.dart';

class Chat {
  final String chatId;
  final String chat;
  final Timestamp time;
  final bool isRead;
  final String senderId;
  final String receiverId;
  final String avatar;
  Chat({
    required this.chatId,
    required this.chat,
    required this.time,
    required this.isRead,
    required this.senderId,
    required this.receiverId,
    required this.avatar,
  });
}
