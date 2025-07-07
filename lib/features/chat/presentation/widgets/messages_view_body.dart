import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:train_zagazig_app/features/chat/presentation/widgets/no_messages_view.dart';
import 'package:uuid/uuid.dart';

class MessagesViewBody extends StatefulWidget {
  const MessagesViewBody({super.key});

  @override
  State<MessagesViewBody> createState() => _MessagesViewBodyState();
}

class _MessagesViewBodyState extends State<MessagesViewBody> {
  final List<types.Message> _messages = [];
  final _user = const types.User(id: 'yousef', firstName: 'يوسف');

  final TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  void handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: const Uuid().v4(),
      text: message.text,
    );

    setState(() {
      _messages.insert(0, textMessage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Chat(
      usePreviewData: true,
      emptyState: const NoMessagesView(),
      scrollPhysics: const AlwaysScrollableScrollPhysics(),
      customBottomWidget: Container(
        padding: const EdgeInsets.only(left: 20, top: 5, bottom: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xffffffff),
        ),
        child: Row(
          children: [
            const Icon(Icons.attach_file, color: Colors.black, size: 25),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
                child: SizedBox(
                  height: 36,
                  child: Container(
                    height: 40.h,
                    width: 252.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color(0xffc7c7c7),
                        width: 1,
                      ),
                    ),
                    child: TextField(
                      controller: controller,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide.none,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Ask  me anything...",
                        hintStyle: const TextStyle(
                          color: Color(0xff8F8F8F),
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                if (controller.text.isEmpty) return;
                handleSendPressed(types.PartialText(text: controller.text));
                controller.clear();
              },
              icon: Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  color: const Color(0xff8F8F8F),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.send, color: Color(0xffffffff)),
              ),
            ),
          ],
        ),
      ),
      messages: _messages,
      onSendPressed: handleSendPressed,
      user: _user,
      theme: DefaultChatTheme(
        primaryColor: const Color(0xff2F80ED),
        secondaryColor: const Color(0xffF6F7F9),
        sentMessageBodyTextStyle: const TextStyle(color: Colors.white),
        receivedMessageBodyTextStyle: const TextStyle(color: Colors.black),
        inputBackgroundColor: Colors.grey[200]!,
      ),
    );
  }
}
