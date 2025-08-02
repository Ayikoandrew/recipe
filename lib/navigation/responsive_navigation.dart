import 'package:flutter/material.dart';
import 'package:recipe/navigation/app_destination.dart';

class ResponsiveNavigation extends StatefulWidget {
  const ResponsiveNavigation({super.key});

  @override
  State<ResponsiveNavigation> createState() => _ResponsiveNavigationState();
}

class _ResponsiveNavigationState extends State<ResponsiveNavigation> {
  int selectedIndex = 0;
  List<AppDestination> get mainDestination =>
      appDestination.where((dest) => dest.isMainSection).toList();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    final width = screenSize.width;

    if (width >= 1200) {
      return _buildWideLayout();
    } else if (width >= 600) {
      return _buildTableLayout();
    } else {
      return _buildMobileLayout();
    }
  }

  Widget _buildMobileLayout() {
    return Scaffold(
      drawer: _buildResponsiveDrawer(),
      body: mainDestination[selectedIndex].page,
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        destinations: mainDestination.map((dest) {
          return NavigationDestination(
            icon: Icon(dest.icon),
            label: dest.label,
          );
        }).toList(),
      ),
    );
  }

  Widget _buildTableLayout() {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            destinations: mainDestination.map((dest) {
              return NavigationRailDestination(
                icon: Icon(dest.icon),
                label: Text(dest.label),
              );
            }).toList(),
            extended: false,
            selectedIndex: selectedIndex,
            onDestinationSelected: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
          ),

          VerticalDivider(width: 1, thickness: 1),

          Expanded(child: mainDestination[selectedIndex].page),
        ],
      ),
    );
  }

  Widget _buildWideLayout() {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            destinations: mainDestination.map((dest) {
              return NavigationRailDestination(
                icon: Icon(dest.icon),
                label: Text(dest.label),
              );
            }).toList(),
            extended: true,
            onDestinationSelected: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
            selectedIndex: selectedIndex,
          ),

          VerticalDivider(thickness: 1, width: 1),

          Expanded(child: mainDestination[selectedIndex].page),
        ],
      ),
    );
  }

  _buildResponsiveDrawer() {}
}
