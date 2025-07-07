import 'package:flutter/material.dart';
import 'package:train_zagazig_app/features/chat/presentation/widgets/messages_view_body.dart';
import 'package:train_zagazig_app/features/chat/presentation/widgets/custom_appBar.dart';

class ChatScreen extends StatelessWidget {
  static const String routeName = 'chat';

  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: MessagesViewBody(), 
    );
  }
}
