import 'package:admin_dashborad/app/data/data/side_menu_data.dart';
import 'package:flutter/material.dart';

class SideMenuWidget extends StatefulWidget {
  const SideMenuWidget({super.key});

  @override
  State<SideMenuWidget> createState() => _SideMenuWidgetState();
}

class _SideMenuWidgetState extends State<SideMenuWidget> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final data = SideMenuData();

    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 80,
        horizontal: 20,
      ),
      child: ListView.builder(
        itemCount: data.menu.length,
        itemBuilder: (context, index) => buildMenuItem(data, index),
      ),
    );
  }

  Widget buildMenuItem(SideMenuData data, int index) {
    final isSelected = selectedIndex == index;
    return Card(
      color: isSelected ? Colors.green : Colors.transparent,
      child: ListTile(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        leading: Icon(
          data.menu[index].icon,
          color: isSelected ? Colors.black : Colors.grey,
        ),
        title: Text(
          data.menu[index].title,
          style: TextStyle(
            color: isSelected ? Colors.black : Colors.grey,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
