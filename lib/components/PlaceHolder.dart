import "package:flutter/material.dart";
import "package:nora/constants/ColorConstants.dart";

class PlaceHolder extends StatelessWidget {
  final double width;
  final double height;
  const PlaceHolder({super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: ColorConstants.color08d2d2,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
