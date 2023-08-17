import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/asset_paths.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({
    super.key,
  });

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      currentIndex: _currentIndex,
      backgroundColor: Colors.white,
      onTap: (value) => setState(() {
        _currentIndex = value;
      }),
      iconSize: 24,
      selectedLabelStyle: const TextStyle(fontSize: 12, color: Colors.grey),
      items: [
        const BottomNavigationBarItem(
            label: "Today", icon: Icon(Icons.calendar_today_outlined)),
        BottomNavigationBarItem(
          label: "Services",
          icon: SvgPicture.asset(
            ImageAssetPath.serviceIcon,
            colorFilter: const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
            height: 20,
          ),
          activeIcon: SvgPicture.asset(
            ImageAssetPath.serviceIcon,
            height: 20,
          ),
        ),
        const BottomNavigationBarItem(
            label: "Chat", icon: Icon(Icons.chat_bubble_outline_rounded))
      ],
    );
  }
}
