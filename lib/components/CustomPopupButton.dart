import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CustomPopupButton {
  static PopupMenuButton filePopupMenuButton(
    BuildContext context,
    Function(String filepath) callback,
  ) {
    final ImagePicker picker = ImagePicker();
    final items = [
      PopupMenuItem(
        value: 'image',
        child: _operateItem(
          "选择文件",
          Icons.photo_library,
          color: Colors.black,
        ),
      ),
    ];

    imageSelect() async {
      final XFile? tempImage =
          await picker.pickImage(source: ImageSource.gallery);
      if (tempImage != null) {
        callback(tempImage.path);
      }
    }

    return _popupMenuButton(
      items,
      iconColor: Colors.white,
      bgColor: Colors.white,
      onSelected: (value) {
        if (value == 'image') {
          imageSelect();
        }
      },
    );
  }

  static PopupMenuButton _popupMenuButton(
    List<PopupMenuItem> items, {
    Color? iconColor,
    Color? bgColor,
    PopupMenuItemSelected? onSelected,
    IconData? icon,
  }) {
    return PopupMenuButton(
      offset: const Offset(0, 40),
      color: bgColor ?? Colors.black54,
      elevation: 1,
      icon: Icon(
        icon ?? Icons.more_horiz,
        color: iconColor ?? Colors.black,
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5),
          bottomRight: Radius.circular(5),
          topRight: Radius.circular(5),
          bottomLeft: Radius.circular(5),
        ),
      ),
      itemBuilder: (BuildContext context) {
        return items;
      },
      onSelected: onSelected,
    );
  }

  static Widget _operateItem(String title, IconData? icon, {Color? color}) {
    return Row(
      children: [
        Icon(icon, color: color ?? Colors.white),
        const SizedBox(width: 5),
        Text(
          title,
          style: TextStyle(
            color: color ?? Colors.white,
          ),
        ),
      ],
    );
  }
}
