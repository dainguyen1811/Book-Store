import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShortItemsButton extends StatelessWidget {
  const ShortItemsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
    child: IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.menu,
        size: 30,
      ),
    ),
  );
}
  }
