import 'package:cars/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class CarCategoryTabBar extends StatefulWidget {
  const CarCategoryTabBar({super.key});

  @override
  State<CarCategoryTabBar> createState() =>
      _CarCategoryTabBarState();
}

class _CarCategoryTabBarState extends State<CarCategoryTabBar> {
  final List<String> categories = [
    'All',
    'Sedan',
    'SUV',
    'Hatchback',
    'Crossover',
    'Pickup',
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (context, index) =>
        const SizedBox(width: 10),
        itemBuilder: (context, index) {
          final isSelected = selectedIndex == index;

          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: isSelected
                    ? AppColor.lightGreen
                    : AppColor.darkGrey,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                categories[index],
                style: TextStyle(
                  color: isSelected
                      ? const Color(0xFF1A211B)
                      : Colors.white70,
                  fontSize: 14,
                  fontWeight: isSelected
                      ? FontWeight.w700
                      : FontWeight.w500,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}