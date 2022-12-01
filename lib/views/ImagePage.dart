import 'package:app/components/CustomPopupButton.dart';
import 'package:flutter/material.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  String path = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ImagePage"),
        actions: [
          CustomPopupButton.filePopupMenuButton(
            context,
            (String filepath) => setState(
              () {
                path = filepath;
              },
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: path.isNotEmpty
            ? Image.asset(path)
            : const Center(
                child: Text("图片不存在"),
              ),
      ),
    );
  }
}
