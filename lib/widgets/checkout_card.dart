import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class CheckoutCard extends StatelessWidget {
  const CheckoutCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12),
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 20,
      ),
      decoration: BoxDecoration(
        color: bgColor4,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage('assets/image_shoes.png'),
              ),
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Terrex Urban Low',
                  style: primaryTextStyle.copyWith(fontWeight: semibold),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 2),
                Text(
                  '\$143,98',
                  style: priceTextStyle,
                )
              ],
            ),
          ),
          SizedBox(width: 10),
          Text(
            '2 items',
            style: secondaryTextStyle.copyWith(fontSize: 12),
          )
        ],
      ),
    );
  }
}
