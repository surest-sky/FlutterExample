import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ColumnPage extends StatefulWidget {
  const ColumnPage({Key? key}) : super(key: key);

  @override
  State<ColumnPage> createState() => _ColumnPageState();
}

class _ColumnPageState extends State<ColumnPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text('mainAxisSize'),
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.blueAccent),
              ),
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text("First"),
                  Text("Second"),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                context.goNamed('user');
              },
              child: const Text("用户页面"),
            )
          ],
        ),
      ),
    );
  }
}
