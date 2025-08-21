import 'package:flutter/material.dart';
import 'package:nora/application/utils/extension/extensions.dart';
import 'package:nora/components/AppText.dart';
import 'package:nora/components/PlaceHolder.dart';

class CurrentBasketItem extends StatelessWidget {
  String? title;
  String? rating;
  String? viewCount;
  String? price;
  bool? isExpandable;
  CurrentBasketItem({
    super.key,
    this.title,
    this.rating,
    this.viewCount,
    this.price,
    this.isExpandable,
  });

  @override
  Widget build(BuildContext context) {
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
                  text: title ?? '',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                4.y,
                Row(
                  children: [
                    if (rating != null && rating!.isNotEmpty)
                      AppText(
                        text: rating!,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[600],
                      ),
                    if (rating != null &&
                        rating!.isNotEmpty &&
                        ((viewCount != null && viewCount!.isNotEmpty) ||
                            (price != null && price!.isNotEmpty)))
                      8.x,
                    if (viewCount != null && viewCount!.isNotEmpty)
                      AppText(
                        text: viewCount!,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[600],
                      ),
                    if (viewCount != null &&
                        viewCount!.isNotEmpty &&
                        price != null &&
                        price!.isNotEmpty)
                      8.x,
                    if (price != null && price!.isNotEmpty)
                      AppText(
                        text: price!,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[600],
                      ),
                  ],
                ),
              ],
            ),
          ),
          if (isExpandable ?? false)
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
        ],
      ),
    );
  }
}
