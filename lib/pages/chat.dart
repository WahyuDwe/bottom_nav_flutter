import 'package:flutter/material.dart';

class Chat extends StatefulWidget {

  @override
  State createState() => _State();
}

class _State extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat'),
      ),
    );
  }
}
