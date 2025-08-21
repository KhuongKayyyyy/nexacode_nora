import 'package:flutter/material.dart';
import 'package:nora/components/AppButtonWithTag.dart';

class Item {
  final String title;
  final String subtitle;
  final String price;
  final String rating;
  final String viewCount;
  final TagType? tagType;
  final VoidCallback? onTap;

  Item({
    required this.title,
    required this.subtitle,
    required this.price,
    required this.rating,
    required this.viewCount,
    this.tagType,
    this.onTap,
  });

  // Convert Item to JSON
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'subtitle': subtitle,
      'price': price,
      'rating': rating,
      'viewCount': viewCount,
    };
  }

  // Create Item from JSON
  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      title: json['title'] ?? '',
      subtitle: json['subtitle'] ?? '',
      price: json['price'] ?? '',
      rating: json['rating'] ?? '',
      viewCount: json['viewCount'] ?? '',
    );
  }

  // Mock data for testing and development
  static List<Item> getMockItems() {
    return [
      Item(
        title: '6월 사주 애정운',
        subtitle: '6월 사주로 보는 애정운\n새로운 사랑이 찾아올까요?',
        price: '1,500젤리',
        rating: '4.8',
        viewCount: '조회수 15만회+',
      ),
      Item(
        title: '6월 사주 재학운',
        subtitle: '6월 사주로 보는 재물운\n돈이 들어올 시기를 알아보세요',
        price: '1,200젤리',
        rating: '4.7',
        viewCount: '조회수 12만회+',
      ),
      Item(
        title: '6월 사주 재물운',
        subtitle: '6월 사주로 보는 재물운\n재정 상태와 투자 운을 확인하세요',
        price: '1,800젤리',
        rating: '4.9',
        viewCount: '조회수 20만회+',
      ),
      Item(
        title: '6월 사주 건강운',
        subtitle: '6월 사주로 보는 건강운\n건강 관리 포인트를 알려드려요',
        price: '1,000젤리',
        rating: '4.6',
        viewCount: '조회수 8만회+',
      ),
      Item(
        title: '6월 사주 학업운',
        subtitle: '6월 사주로 보는 학업운\n시험과 학습에 도움되는 시기',
        price: '1,300젤리',
        rating: '4.8',
        viewCount: '조회수 10만회+',
      ),
      Item(
        title: '6월 사주 업무운',
        subtitle: '6월 사주로 보는 직장운\n승진과 이직 운세를 확인하세요',
        price: '1,600젤리',
        rating: '4.7',
        viewCount: '조회수 18만회+',
      ),
      Item(
        title: '6월 사주 대인관계운',
        subtitle: '6월 사주로 보는 인간관계\n새로운 인연과 갈등 해결',
        price: '1,400젤리',
        rating: '4.9',
        viewCount: '조회수 22만회+',
      ),
      Item(
        title: '오늘 짝사랑 속마음',
        subtitle: '그 사람의 속마음이 어떨지 궁금하신가요?\n오늘의 그 사람의 마음을 타로로 알아보세요',
        price: '120젤리',
        rating: '4.9',
        viewCount: '조회수 31만회+',
      ),
      Item(
        title: '2025 신년 운세',
        subtitle: '작년 5만명이 본 신년운세, 업그레이드가 되어 돌아왔다!',
        price: '2,000젤리',
        rating: '4.9',
        viewCount: '조회수 31만회+',
      ),
    ];
  }

  static Item getMockItem() {
    return Item(
      title: '오늘 짝사랑 속마음',
      subtitle: '그 사람의 속마음이 어떨지 궁금하신가요?\n오늘의 그 사람의 마음을 타로로 알아보세요',
      price: '120젤리',
      rating: '4.9',
      viewCount: '조회수 31만회+',
    );
  }
}
