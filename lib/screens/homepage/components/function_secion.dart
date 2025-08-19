import 'package:flutter/material.dart';
import 'package:nora/components/AppText.dart';
import 'package:nora/components/AppButtonWithTag.dart';

class FunctionSection extends StatelessWidget {
  final String title;
  final List<Map<String, dynamic>> functions;

  const FunctionSection({
    super.key,
    required this.title,
    required this.functions,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          text: title,
          fontSize: 18,
          fontWeight: FontWeight.w600,
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
          itemCount: functions.length,
          itemBuilder: (context, index) {
            final function = functions[index];
            return AppButtonWithTag(
              text: function['text'],
              tagType: function['tagType'],
              onTap: function['onTap'],
            );
          },
        ),
      ],
    );
  }
}
