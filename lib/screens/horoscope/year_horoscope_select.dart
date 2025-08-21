import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nora/application/utils/extension/extensions.dart';
import 'package:nora/components/AppText.dart';
import 'package:nora/components/PlaceHolder.dart';
import 'package:nora/data/model/item.dart';
import 'package:nora/screens/horoscope/horoscope_payment.dart';

class YearHoroscopeSelect extends StatelessWidget {
  const YearHoroscopeSelect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(backgroundColor: Colors.grey[100], elevation: 0),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Top section with icon and text
            AppPlaceHolder(width: 120, height: 120),

            24.y,
            AppText(
              text: "운세를 찾아 볼까야\n같이 볼까야?",
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black,
              textAlign: TextAlign.center,
            ),
            48.y,

            // Selection options
            Expanded(
              child: Column(
                children: [
                  _buildOptionCard(
                    title: "나 혼자",
                    price: "2,000 젤리",
                    color: Color(0xFF7FFFD4),
                    isSelected: false,
                  ),
                  16.y,
                  _buildOptionCard(
                    title: "2명이서",
                    originalPrice: "4,000 젤리",
                    discountedPrice: "3,500 젤리",
                    discount: "13% 더 싸요",
                    color: Color(0xFF7FFFD4),
                    isSelected: false,
                  ),
                  16.y,
                  _buildOptionCard(
                    title: "3명이서",
                    originalPrice: "6,000 젤리",
                    discountedPrice: "5,000 젤리",
                    discount: "17% 더 싸요",
                    color: Color(0xFF7FFFD4),
                    isSelected: false,
                  ),
                  16.y,
                  _buildOptionCard(
                    title: "4명이서",
                    originalPrice: "8,000 젤리",
                    discountedPrice: "6,000 젤리",
                    discount: "25% 더 싸요",
                    color: Color(0xFF7FFFD4),
                    isSelected: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionCard({
    required String title,
    String? price,
    String? originalPrice,
    String? discountedPrice,
    String? discount,
    required Color color,
    required bool isSelected,
  }) {
    return InkWell(
      onTap: () {
        Get.to(
          () => HoroscopePayment(
            item: Item(
              title: title,
              price: "400젤리",
              subtitle:
                  '내가 사랑 또는 좋아하는 사람과\n어떤 일이 일어날지 공금하지 않니?\n사주로 어떤 일이 생길지 풀어줄게  ',
              rating: '4.9',
              viewCount: '조회수 31만회+',
            ),
          ),
        );
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: isSelected ? Border.all(color: color, width: 2) : null,
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
            AppPlaceHolder(width: 24, height: 24),
            16.x,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    text: title,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                  if (price != null) ...[
                    4.y,
                    AppText(
                      text: price,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[600],
                    ),
                  ],
                  if (originalPrice != null && discountedPrice != null) ...[
                    4.y,
                    Row(
                      children: [
                        AppText(
                          text: originalPrice,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[400],
                          textDecoration: TextDecoration.lineThrough,
                        ),
                        8.x,
                        AppText(
                          text: discountedPrice,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                        8.x,
                        if (discount != null)
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(205, 218, 255, 1),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: AppText(
                              text: discount,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 18, 48, 136),
                            ),
                          ),
                      ],
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
