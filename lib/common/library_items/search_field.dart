import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        decoration: InputDecoration(
          hintText: "Tìm sách, tên tác giả",
          hintStyle: TextStyle(fontSize: 15),
          prefixIcon: const Icon(
            Icons.search,
            size: 30,
          ),
          filled: true,
          contentPadding: const EdgeInsets.all(15),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
