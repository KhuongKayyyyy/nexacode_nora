import 'package:flutter/material.dart';
import 'package:nora/components/AppText.dart';
import 'package:nora/data/model/item.dart';

enum TagType { newTag, hot, event }

class AppButtonWithTag extends StatelessWidget {
  final Item item;
  final String text;
  final TagType? tagType;
  final VoidCallback? onTap;

  const AppButtonWithTag({
    super.key,
    required this.item,
    required this.text,
    this.tagType,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: AppText(
                overflow: TextOverflow.ellipsis,
                text: text,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            if (tagType != null) ...[SizedBox(width: 8), _buildTag(tagType!)],
          ],
        ),
      ),
    );
  }

  Widget _buildTag(TagType type) {
    Color backgroundColor;
    String tagText;

    switch (type) {
      case TagType.newTag:
        backgroundColor = Colors.yellow[600]!;
        tagText = 'NEW';
        break;
      case TagType.hot:
        backgroundColor = Colors.pink[400]!;
        tagText = 'HOT';
        break;
      case TagType.event:
        backgroundColor = Colors.blue[400]!;
        tagText = 'EVENT';
        break;
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: AppText(
        text: tagText,
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    );
  }
}
