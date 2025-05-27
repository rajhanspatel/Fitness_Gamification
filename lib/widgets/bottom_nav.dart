import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<IconData> icons = [
      Icons.home,
      Icons.sports_esports,
      Icons.restaurant_menu,
      Icons.bar_chart,
    ];

    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: const BoxDecoration(
          color: Color(0xFFF8FBFF),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, -1),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(icons.length, (index) {
            bool isSelected = currentIndex == index;

            return GestureDetector(
              onTap: () => onTap(index),
              child: isSelected
                  ? Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFF4A7DC8),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.2),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Icon(
                  icons[index],
                  size: 26,
                  color: Colors.white,
                ),
              )
                  : Icon(
                icons[index],
                size: 26,
                color: Colors.black45,
              ),
            );
          }),
        ),
      ),
    );
  }
}
