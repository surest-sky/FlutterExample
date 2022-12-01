import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);
    return AnimatedBuilder(
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("DetailPage"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: Text("当前处于的路由位置: ${router.location}"),
          ),
        );
      },
      animation: router,
    );
  }
}
