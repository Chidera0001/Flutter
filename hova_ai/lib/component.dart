import 'package:flutter/material.dart';

class ItemContainer extends StatelessWidget {
  final String title;
  final String text;
  final String price;
  final Widget widget;
  final Color color;
  const ItemContainer(
      {super.key,
      required this.title,
      required this.price,
      required this.widget,
      required this.color,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: color,
                child: Text(text),
              ),
              title: Text(text),
              trailing: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xff581845),
                ),
                child: Icon(Icons.more_horiz),
              ),
            ),
            Divider(color: Color(0xffCCCCCC)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(text, style: TextStyle(color: Colors.black)),
                widget
              ],
            ),
          ],
        ));
  }
}
