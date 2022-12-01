import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppPage extends StatefulWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            ListTile(
              trailing: const Icon(Icons.chevron_right),
              title: const Text("Router demo"),
              onTap: () {
                context.pushNamed('router');
              },
            ),
            ListTile(
              trailing: const Icon(Icons.chevron_right),
              title: const Text("GestureDetector 手势"),
              onTap: () {
                context.pushNamed('ges');
              },
            ),
            ListTile(
              trailing: const Icon(Icons.image_rounded),
              title: const Text("图片选择"),
              onTap: () {
                context.pushNamed('image');
              },
            ),
          ],
        ),
      )
    );
  }

  Widget buttonRedirect(String routeName) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Ink(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFfbab66), Color(0xFFf7418c)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListTile(
          title: Text(routeName),
          trailing: const Icon(Icons.arrow_right),
          onTap: () => context.goNamed(routeName),
        ),
      ),
    );
  }
}


