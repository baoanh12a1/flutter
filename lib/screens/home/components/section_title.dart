import 'package:flutter/material.dart';

import '../../../size_config.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String title;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.black,
          ),
        ),
        Padding(
          padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            GestureDetector(
              onTap: press,
              child: Text(
                "Xem thêm",
                style: TextStyle(color: Color(0xFFBBBBBB)),
              ),
            ),
            Icon(Icons.keyboard_arrow_right_outlined, size: 22,),
            ],
          ),
        ),
      ],
    );
  }
}
