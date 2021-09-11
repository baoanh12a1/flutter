import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';

class Categories_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/money.svg", "text": "Chuyển tiền"},
      {"icon": "assets/icons/pay.svg", "text": "Trả trước"},
      {"icon": "assets/icons/piggy-bank.svg", "text": "Tích lũy"},
      {"icon": "assets/icons/qr-code.svg", "text": "Quét mã"},
      {"icon": "assets/icons/more.svg", "text": "Thêm"},
    ];
    return Padding(
      padding: EdgeInsets.fromLTRB(getProportionateScreenWidth(20), 0, getProportionateScreenWidth(20), 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          categories.length,
              (index) => CategoryCard(
            icon: categories[index]["icon"],
            text: categories[index]["text"],
            press: () {},
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String? icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(55),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(15)),
              height: getProportionateScreenWidth(55),
              width: getProportionateScreenWidth(55),
              decoration: BoxDecoration(
                color: Color(0xFFE8F5E9),
                borderRadius: BorderRadius.circular(10),
              ),
              child: SvgPicture.asset(icon!),
            ),
            SizedBox(height: 4),
            Text(text!, textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}
