import 'package:ebank/screens/transfer-screen.dart';
import 'package:flutter/material.dart';
import 'package:ebank/constant.dart';

class AvaterWidget extends StatelessWidget {
  final String uri;
  final double height;
  final double width;
  AvaterWidget({
    this.uri =
        'https://i.pinimg.com/originals/21/2c/ee/212cee95875ce62c2b290d4d18c1f815.jpg',
    this.height = 70,
    this.width = 70,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context, rootNavigator: true)
          .push(MaterialPageRoute(builder: (
        _,
      ) {
        return TransferScreen();
      })),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        height: this.height,
        width: this.width,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: kBlueColor, width: 2)),
        child: CircleAvatar(
          backgroundImage: NetworkImage(
            this.uri,
          ),
        ),
      ),
    );
  }
}
