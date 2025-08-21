import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nora/components/AppText.dart';
import 'package:nora/constants/ColorConstants.dart';
import 'package:nora/application/controllers/base_controller.dart';

class AppBottomNavigation extends StatelessWidget {
  final List<AppBottomNavigationItem> items;

  const AppBottomNavigation({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        height: 100,
        decoration: BoxDecoration(
          color: ColorConstants.white,
          border: Border(
            top: BorderSide(color: ColorConstants.appGrayMiddle, width: 0.5),
          ),
        ),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(items.length, (index) {
              final item = items[index];
              final isSelected = index == BaseController.to.currentIndex;

              return GestureDetector(
                onTap: () => BaseController.to.setCurrentIndex(index),
                behavior: HitTestBehavior.opaque,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 16,
                  ),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AnimatedSwitcher(
                          duration: const Duration(milliseconds: 300),
                          transitionBuilder:
                              (Widget child, Animation<double> animation) {
                                return ScaleTransition(
                                  scale: animation,
                                  child: child,
                                );
                              },
                          child: Icon(
                            item.activeIcon != null && isSelected
                                ? item.activeIcon!
                                : item.icon,
                            key: ValueKey(
                              isSelected ? 'active-$index' : 'inactive-$index',
                            ),
                            color: isSelected
                                ? ColorConstants.black
                                : ColorConstants.appGrayBtn,
                            size: isSelected ? 26 : 24,
                          ),
                        ),
                        const SizedBox(height: 4),
                        AnimatedDefaultTextStyle(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                          style: TextStyle(
                            color: isSelected
                                ? ColorConstants.black
                                : ColorConstants.appGrayBtn,
                            fontSize: 12,
                            fontWeight: isSelected
                                ? FontWeight.w600
                                : FontWeight.w400,
                          ),
                          child: AppText(
                            overflow: TextOverflow.ellipsis,
                            text: item.label,
                            fontSize: 12,
                            fontWeight: isSelected
                                ? FontWeight.w600
                                : FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      );
    });
  }
}

class AppBottomNavigationItem {
  final IconData icon;
  final IconData? activeIcon;
  final String label;

  const AppBottomNavigationItem({
    required this.icon,
    this.activeIcon,
    required this.label,
  });
}
