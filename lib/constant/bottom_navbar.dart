import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onTabTapped;

  const BottomNav({
    Key? key,
    required this.selectedIndex,
    required this.onTabTapped,
  }) : super(key: key);

  @override
  BottomNavigationBarState createState() => BottomNavigationBarState();
}

class BottomNavigationBarState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      key: widget.key,
      currentIndex: widget.selectedIndex,
      onTap: widget.onTabTapped,
      selectedItemColor: Colors.yellow,
      unselectedItemColor: Colors.grey,
      items: [
        _buildNavItem(Icons.home, 'Home', 0),
        _buildNavItem(Icons.category, 'Catalog', 1),
        _buildNavItem(Icons.shopping_cart, 'Cart', 2),
        _buildNavItem(Icons.person, 'Profile', 3),
      ],
    );
  }

  BottomNavigationBarItem _buildNavItem(
      IconData icon, String label, int index) {
    return BottomNavigationBarItem(
      icon: Icon(
        icon,
        color: widget.selectedIndex == index ? Colors.yellow : Colors.grey,
      ),
      label: label,
      backgroundColor: Colors.white,
    );
  }
}
