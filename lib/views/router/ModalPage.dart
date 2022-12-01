import 'package:app/models/UserModel.dart';
import 'package:flutter/material.dart';

class ModalPage extends StatefulWidget {
  final UserModel user;

  const ModalPage({Key? key, required this.user}) : super(key: key);

  @override
  State<ModalPage> createState() => _ModalPageState();
}

class _ModalPageState extends State<ModalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ModalPage"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text("名字: ${widget.user.name}"),
            const Divider(),
            Text("年龄: ${widget.user.age}"),
          ],
        ),
      ),
    );
  }
}
