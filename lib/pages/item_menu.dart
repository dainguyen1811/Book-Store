import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'account_items/liked.dart';

class ItemMenu extends StatefulWidget {
  // const ItemMenu({super.key});
  final IconData iconData;
  final Color iconColor;
  final String name;
  final VoidCallback? action;
  final Widget? trailingWidget; 

  ItemMenu(this.iconData, this.name, this.action, this.iconColor,
      {this.trailingWidget, super.key});

  @override
  State<ItemMenu> createState() => _ItemMenuState();
}

class _ItemMenuState extends State<ItemMenu> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Icon(
          widget.iconData,
          size: 25,
          color: widget.iconColor,
        ),
        title: Text(widget.name),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 15,
        ),
        onTap: widget.action);

    // return SizedBox(

    //   width: double.infinity,
    //   child: ElevatedButton(

    //     onPressed: widget.action,
    //     child:  Row(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: [
    //         Row(
    //           children: [
    //             Icon(
    //               widget.iconData,
    //               color: widget.iconColor,
    //             ),
    //             const SizedBox(width: 8.0),
    //             Text(
    //               widget.name,
    //               style: const TextStyle(
    //                   fontWeight: FontWeight.normal),
    //             ),
    //           ],
    //         ),
    //         const Icon(
    //           Icons.arrow_right,
    //           size: 20,

    //         ),

    //       ],
    //     ),
    //   ),
    // );
  }
}
