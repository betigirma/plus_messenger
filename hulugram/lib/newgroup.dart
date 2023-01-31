import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewGroupPage extends StatelessWidget {
  const NewGroupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text('New Group'),
        backgroundColor: Colors.teal[500],
      ),
    );
  }
}
