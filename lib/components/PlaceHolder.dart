import "package:flutter/material.dart";
import "package:nora/components/AppText.dart";
import "package:nora/constants/ColorConstants.dart";

class AppPlaceHolder extends StatelessWidget {
  final double width;
  final double height;
  final String? title;
  const AppPlaceHolder({
    super.key,
    required this.width,
    required this.height,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: ColorConstants.color08d2d2,
        borderRadius: BorderRadius.circular(10),
      ),
      child: title != null ? Center(child: AppText(text: title!)) : null,
    );
  }
}
