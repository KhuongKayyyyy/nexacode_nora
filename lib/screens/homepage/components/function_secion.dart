import 'package:flutter/material.dart';
import 'package:nora/components/AppText.dart';
import 'package:nora/components/AppButtonWithTag.dart';
import 'package:nora/constants/AppFont.dart';
import 'package:nora/data/model/item.dart';

class FunctionSection extends StatelessWidget {
  final String title;
  final List<Item> items;
  final List<Map<String, dynamic>>? functions;

  const FunctionSection({
    super.key,
    required this.title,
    this.items = const [],
    this.functions,
  });

  @override
  Widget build(BuildContext context) {
    final dataToUse = items.isNotEmpty ? items : functions ?? [];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          fontFamily: AppFont.Ownglyph_ryuttung,
          text: title,
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
        SizedBox(height: 16),
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 3,
          ),
          itemCount: dataToUse.length,
          itemBuilder: (context, index) {
            if (items.isNotEmpty) {
              // Handle Item objects
              final item = items[index];
              return AppButtonWithTag(
                item: item,
                text: item.title,
                tagType: item.tagType,
                onTap: item.onTap ?? () {},
              );
            } else {
              // Handle Map objects (backward compatibility)
              final function = functions![index];
              return AppButtonWithTag(
                item: Item(
                  title: function['text'],
                  subtitle: function['subtitle'],
                  price: function['price'],
                  rating: function['rating'],
                  viewCount: function['viewCount'],
                ),
                text: function['text'],
                tagType: function['tagType'],
                onTap: function['onTap'],
              );
            }
          },
        ),
      ],
    );
  }
}
