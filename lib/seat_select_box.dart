import 'package:flutter/material.dart';

class SeatSelectBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Screen',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 12,
        ),
        row(1),
        SizedBox(
          height: 8,
        ),
        row(2),
        SizedBox(
          height: 8,
        ),
        row(3),
        SizedBox(
          height: 8,
        ),
        row(4),
        SizedBox(
          height: 8,
        ),
        row(5),
        SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            label('Availavle', Colors.grey),
            SizedBox(
              width: 4,
            ),
            label('Selected', Colors.amber),
          ],
        ),
      ],
    ));
  }

  Row label(String text, Color color) {
    return Row(
      children: [
        Text(text),
        SizedBox(
          width: 4,
        ),
        Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(10)),
        )
      ],
    );
  }

  Widget row(int rowNum) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: Center(
              child: Text(
                '$rowNum',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          seat(),
          seat(),
          seat(),
          seat(),
          seat(),
          seat(),
          seat(),
          seat(),
          seat(),
          seat(),
          seat(),
        ],
      ),
    );
  }

  Widget seat() {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    ));
  }
}