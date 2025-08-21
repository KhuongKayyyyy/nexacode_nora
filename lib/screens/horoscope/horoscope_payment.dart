import 'package:flutter/material.dart';
import 'package:nora/application/utils/extension/extensions.dart';
import 'package:nora/components/AppText.dart';
import 'package:nora/components/PlaceHolder.dart';
import 'package:nora/data/model/item.dart';
import 'package:nora/screens/horoscope/components/current_basket_item.dart';
import 'package:nora/screens/horoscope/components/payment_option.dart';

class HoroscopePayment extends StatelessWidget {
  final Item item;
  const HoroscopePayment({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        elevation: 0,
        title: AppText(
          text: '젤리',
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Heading section with icon and service details
            CurrentBasketItem(
              title: item.title,
              rating: item.rating,
              viewCount: item.viewCount,
              price: item.price,
            ),

            24.y,

            // Balance and purchase details
            _buildBalanceAndPurchaseDetail(),

            24.y,

            // Section header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  text: '젤리 충전',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                AppText(
                  text: '단위: 원',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey[600],
                ),
              ],
            ),

            16.y,

            // Payment options list
            Expanded(
              child: ListView(
                children: [
                  PaymentOption(jellyAmount: '10개 젤리', price: '3,900원'),
                  PaymentOption(jellyAmount: '30개 젤리', price: '9,900원'),
                  PaymentOption(jellyAmount: '50개 젤리', price: '14,900원'),
                  PaymentOption(jellyAmount: '100개 젤리', price: '29,900원'),
                  PaymentOption(jellyAmount: '150개 젤리', price: '39,900원'),
                  PaymentOption(jellyAmount: '300개 젤리', price: '79,900원'),
                  PaymentOption(jellyAmount: '500개 젤리', price: '129,900원'),
                  PaymentOption(jellyAmount: '700개 젤리', price: '179,900원'),
                  PaymentOption(jellyAmount: '1000개 젤리', price: '239,900원'),
                  PaymentOption(jellyAmount: '1500개 젤리', price: '349,900원'),
                  PaymentOption(jellyAmount: '2000개 젤리', price: '439,900원'),
                  PaymentOption(jellyAmount: '3000개 젤리', price: '639,900원'),
                  PaymentOption(jellyAmount: '5000개 젤리', price: '999,900원'),
                  PaymentOption(jellyAmount: '10000개 젤리', price: '1,899,900원'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _buildBalanceAndPurchaseDetail() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText(
                text: '내 젤리',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
              AppText(
                text: '4 젤리',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ],
          ),
          16.y,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText(
                text: '상품 금액',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
              AppText(
                text: '2,000 젤리',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ],
          ),
          16.y,
          Divider(color: Colors.grey[300]),
          16.y,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText(
                text: '상품 금액',
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.blue,
              ),
              AppText(
                text: '2,000 젤리',
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.blue,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
