import 'package:flutter/material.dart';
import 'package:nora/application/utils/extension/extensions.dart';
import 'package:nora/components/AppButton.dart';
import 'package:nora/components/AppText.dart';
import 'package:nora/components/PlaceHolder.dart';

class PaymentOption extends StatelessWidget {
  final String jellyAmount;
  final String price;
  const PaymentOption({
    super.key,
    required this.jellyAmount,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          AppPlaceHolder(width: 24, height: 24),
          16.x,
          AppText(
            text: jellyAmount,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
          const Spacer(),
          AppButton(
            text: price,
            onTap: () {},
            width: 100,
            height: 30,
            fontSize: 12,
          ),
        ],
      ),
    );
  }
}
