import 'package:flutter/material.dart';
import 'package:recipe/navigation/pages/favorites_page.dart';
import 'package:recipe/navigation/pages/list_page.dart';
import 'package:recipe/navigation/pages/responsive_home_page.dart';

class AppDestination {
  final String label;
  final IconData icon;
  final Widget page;
  final bool isMainSection;

  AppDestination({
    required this.label,
    required this.icon,
    required this.page,
    required this.isMainSection,
  });
}

List<AppDestination> appDestination = [
  AppDestination(
    label: 'Home',
    icon: Icons.home,
    page: ResponsiveHomePage(),
    isMainSection: true,
  ),
  AppDestination(
    label: 'List',
    icon: Icons.list,
    page: ListPage(),
    isMainSection: true,
  ),
  // AppDestination(
  //   label: 'Detail',
  //   icon: Icons.details,
  //   page: DetailsPage(),
  //   isMainSection: true,
  // ),
  AppDestination(
    label: 'Favorites',
    icon: Icons.favorite,
    page: ItemsScreen(),
    isMainSection: true,
  ),
];
