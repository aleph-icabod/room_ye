import 'package:flutter/material.dart';

class CopyRight extends StatelessWidget {
  const CopyRight({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          "RoomYe 2023",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        Icon(Icons.copyright, color: Colors.white),
      ],
    );
  }
}
