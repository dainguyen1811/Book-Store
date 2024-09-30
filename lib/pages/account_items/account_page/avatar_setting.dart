
import 'package:flutter/material.dart';

class AvatarSetting extends StatelessWidget {
  const AvatarSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: SingleChildScrollView(
        
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            TextButton(
              onPressed: () {},
              child: const Center(
                child: Text(
                  'Chụp ảnh',
                  style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 0, 139, 252)),
                ),
              ),
            ),
            const Divider(),
            TextButton(
              onPressed: () {},
              child: const Center(
                child: Text(
                  'Chọn ảnh sẵn có',
                  style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 0, 139, 252)),
                ),
              ),
            ),
            
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Center(
                child: Text(
                  'Huỷ',
                  style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 0, 139, 252), fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
