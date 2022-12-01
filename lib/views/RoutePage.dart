import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class RoutePage extends StatefulWidget {
  const RoutePage({Key? key}) : super(key: key);

  @override
  State<RoutePage> createState() => _RoutePageState();
}

class _RoutePageState extends State<RoutePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RoutePage"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  context.push('/detail');
                },
                child: const Text("go detail"),
              ),
              ElevatedButton(
                onPressed: () {
                  context.go('/ges');
                },
                child: const Text("go 手势"),
              ),
              ElevatedButton(
                onPressed: () {
                  context.push('/modal?name=dcf&age=25');
                },
                child: const Text("go modal"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
