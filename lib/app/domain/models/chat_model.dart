import 'package:king_barber/app/data/entities/chat.dart';

class ChatModel extends Chat {
  ChatModel({
    required super.chatId,
    required super.chat,
    required super.time,
    required super.isRead,
    required super.receiverId,
    required super.senderId,
    required super.avatar,
  });
}
