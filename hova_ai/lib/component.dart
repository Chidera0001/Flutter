import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 2,
            color: Colors.grey.shade300,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: color,
                    child: CircleAvatar(
                      radius: 23,
                      backgroundColor: Colors.white,
                      child: Center(
                        child: Text(
                          text,
                          style: TextStyle(color: color),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                Text(title),
                const Spacer(),
                Container(
                  margin: const EdgeInsets.all(5),
                  height: 45.h,
                  width: 45.w,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: const Color(0xff581845),
                    ),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: const Icon(Icons.more_horiz),
                ),
              ]),
            ),
            const Divider(color: Color(0xffCCCCCC)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(price,
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                  widget
                ],
              ),
            ),
          ],
        ));
  }
}
