import 'package:flutter/material.dart';
import 'package:nora/application/utils/extension/extensions.dart';
import 'package:nora/components/AppButton.dart';
import 'package:nora/components/AppText.dart';
import 'package:nora/components/PlaceHolder.dart';
import 'package:nora/constants/ColorConstants.dart';
import 'package:nora/data/model/item.dart';

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
            _buildHeadingItem(),

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
                  _buildPaymentOption('10개 젤리', '3,900원'),
                  _buildPaymentOption('30개 젤리', '9,900원'),
                  _buildPaymentOption('50개 젤리', '14,900원'),
                  _buildPaymentOption('100개 젤리', '29,900원'),
                  _buildPaymentOption('150개 젤리', '39,900원'),
                  _buildPaymentOption('300개 젤리', '79,900원'),
                  _buildPaymentOption('500개 젤리', '129,900원'),
                  _buildPaymentOption('700개 젤리', '179,900원'),
                  _buildPaymentOption('1000개 젤리', '239,900원'),
                  _buildPaymentOption('1500개 젤리', '349,900원'),
                  _buildPaymentOption('2000개 젤리', '439,900원'),
                  _buildPaymentOption('3000개 젤리', '639,900원'),
                  _buildPaymentOption('5000개 젤리', '999,900원'),
                  _buildPaymentOption('10000개 젤리', '1,899,900원'),
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

  Container _buildHeadingItem() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          AppPlaceHolder(width: 60, height: 60),
          16.x,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: item.title,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                4.y,
                Row(
                  children: [
                    AppText(
                      text: item.rating,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[600],
                    ),
                    8.x,
                    AppText(
                      text: item.viewCount,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[600],
                    ),
                    8.x,
                    AppText(
                      text: item.price,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[600],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPaymentOption(String jellyAmount, String price) {
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
