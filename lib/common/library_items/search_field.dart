import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
    child: TextField(
      decoration: InputDecoration(
        hintText: "Tìm sách, tên tác giả",
        prefixIcon: const Icon(
          Icons.search,
          size: 30,
        ),
        filled: true,
        fillColor: Colors.grey.shade200,
        contentPadding: const EdgeInsets.all(15),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade200,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade200,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    ),
  );
}
  }
