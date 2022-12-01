import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class GestureDetectorPage extends StatefulWidget {
  const GestureDetectorPage({Key? key}) : super(key: key);

  @override
  State<GestureDetectorPage> createState() => _GestureDetectorPageState();
}

class _GestureDetectorPageState extends State<GestureDetectorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GestureDetectorPage"),
      ),
      body: GestureDetector(
        onTap: () {
          showDialog(context: context, builder: (content) {
            return Center(
              child: ElevatedButton(
                onPressed: () {
                  // context.pop();
                  Navigator.of(context).pop();
                },
                child: const Text("关闭"),
              ),
            );
          });
        },
        child: Row(
          children: [
            const Text("点击手势"),
            ElevatedButton(onPressed: () {
              context.replace('/');
            }, child: const Text("回到首页"))
          ],
        ),
      )
    );
  }
}
