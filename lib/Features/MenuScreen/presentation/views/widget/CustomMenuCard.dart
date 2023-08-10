import 'package:flutter/material.dart';
import 'package:meal_app/Core/utils/Styls.dart';

class MenuCard extends StatelessWidget {
  const MenuCard(
      {Key? key,
        required this.name,
        required this.count,
        required this.imageShape})
      : super(key: key);

  final String name;
  final String count;
  final Widget imageShape;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 90.0,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 80,
        ),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              bottomLeft: Radius.circular(50),
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color(0xFFB6B7B7),
                offset: Offset(0, 5),
                blurRadius: 10,
              ),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: Styles.textStyle22,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              '$count Items',
              style: Styles.textStyle11,
            ),
          ],
        ),
      ),
      SizedBox(
        height: 90.0,
        child: Align(
          alignment: Alignment.centerLeft,
          child: imageShape,
        ),
      ),
      SizedBox(
        height: 90.0,
        child: Align(
          alignment: Alignment.centerRight,
          child: Container(
              height: 50.0,
              width: 50.0,
              decoration: const ShapeDecoration(
                shape: CircleBorder(),
                color: Colors.white,
                shadows: [
                  BoxShadow(
                    color: Color(0xFFB6B7B7),
                    offset: Offset(0, 2),
                    blurRadius: 5,
                  )
                ],
              ),
              child: const Icon(
                Icons.navigate_next_rounded,
                size: 30.0,
                color: Colors.deepOrange,
              )),
        ),
      ),
    ]);
  }
}
