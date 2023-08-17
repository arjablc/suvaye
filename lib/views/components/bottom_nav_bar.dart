import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/asset_paths.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      iconSize: 24,
      selectedLabelStyle: TextStyle(fontSize: 12, color: Colors.grey),
      items: [
        const BottomNavigationBarItem(
            label: "Today", icon: Icon(Icons.calendar_today_outlined)),
        BottomNavigationBarItem(
            label: "Services",
            icon: SvgPicture.asset(ImageAssetPath.serviceIcon)),
        const BottomNavigationBarItem(
            label: "Chat", icon: Icon(Icons.chat_bubble_outline_rounded))
      ],
    );
  }
}
