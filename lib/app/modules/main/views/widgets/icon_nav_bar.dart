import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

BottomNavigationBarItem iconNavBar(FaIconData icon, String label) {
  return BottomNavigationBarItem(icon: FaIcon(icon), label: label);
}
