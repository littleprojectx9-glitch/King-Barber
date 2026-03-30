import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:king_barber/app/core/theme/color_theme.dart';
import 'package:king_barber/app/core/theme/text_theme.dart';
import 'package:king_barber/app/core/widgets/textfields/build_universal_field.dart';
import '../controllers/chat_controller.dart';

class ChatView extends GetView<ChatController> {
  const ChatView({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final height = size.height;
    final width = size.width;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.chevronLeft, size: 18),
        ),
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: AssetImage('assets/images/barberman.jpg'),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                'Barbershop Bengkong Laut',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyle.inversHeading2,
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          SizedBox(
            height: height,
            width: width,
            child: Image.asset(
              'assets/images/chat_background.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              Expanded(
                child: SizedBox(
                  width: width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: ListView(
                      children: [
                        bubbleChat('chat', true, true, '10:10', width),
                        bubbleChat('chat', false, false, '10:10', width),
                        bubbleChat('chat', true, false, '10:10', width),
                        bubbleChat('chat', false, false, '10:10', width),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 70,
                width: width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: buildUniversalField(
                          hintText: 'ketik pesan',
                          textInputType: TextInputType.text,
                          controller: controller.chat,
                        ),
                      ),
                      const SizedBox(width: 8),
                      SizedBox(
                        height: 44,
                        width: 44,
                        child: Material(
                          color: AppColors.primary,
                          shape: CircleBorder(),
                          child: Center(
                            child: FaIcon(
                              FontAwesomeIcons.chevronRight,
                              color: AppColors.surface,
                              size: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget bubbleChat(
  String chat,
  bool isMe,
  bool isRead,
  String time,
  double width,
) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 12),
    child: Align(
      // 🔥 INI KUNCINYA
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        constraints: BoxConstraints(maxWidth: width * 0.7),
        child: ChatBubble(
          clipper: ChatBubbleClipper5(
            type: isMe ? BubbleType.sendBubble : BubbleType.receiverBubble,
          ),
          backGroundColor: isMe ? Colors.green : Colors.grey.shade300,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(chat, style: AppTextStyle.textPrimary),
              const SizedBox(height: 4),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(time, style: AppTextStyle.supportText),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
