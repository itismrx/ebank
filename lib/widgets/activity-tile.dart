import 'package:flutter/material.dart';

import '../constant.dart';

class ActivityTile extends StatelessWidget {
  final title;
  final subtitle;
  final price;
  final icon;
  const ActivityTile({this.title, this.price, this.subtitle, this.icon});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Card(
        shadowColor: Colors.white60,
        child: ListTile(
          leading: Icon(
            this.icon,
            color: kDeepBlueColor,
          ),
          title: Text(
            this.title,
            softWrap: true,
            style: TextStyle(
                fontSize: 34,
                color: kDeepBlueColor,
                fontFamily: 'Dongle',
                fontWeight: FontWeight.w400),
          ),
          subtitle: Text(this.subtitle,
              style: TextStyle(
                  fontSize: 14,
                  color: kDeepBlueColor,
                  // fontFamily: 'Dongle',
                  fontWeight: FontWeight.w300)),
          trailing: Text('-\$${this.price}',
              style: TextStyle(
                  fontSize: 34,
                  color: kDeepBlueColor,
                  fontFamily: 'Dongle',
                  fontWeight: FontWeight.w400)),
        ),
      ),
    );
  }
}
