import 'package:flutter/material.dart';
import 'package:in_app_review/in_app_review.dart';

class RatingDialog extends StatefulWidget {
  @override
  _RatingDialogState createState() => _RatingDialogState();
}

class _RatingDialogState extends State<RatingDialog> {

  
  int _rating = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(5, (index) {
            return IconButton(
              icon: Icon(
                index < _rating ? Icons.star : Icons.star_border,
                color: Colors.amber,
                size: 40,
              ),
              onPressed: () {
                setState(() {
                  _rating = index + 1; // Cập nhật đánh giá
                });
              },
            );
          }),
        ),
        SizedBox(height: 20),
        Text(
          'Bạn đã chọn $_rating sao',
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}