import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.subTitle,
    required this.title,
    required this.link,
    required this.icon,
  });
}

const List<MenuItem> appMenuItems = [
  MenuItem(
    subTitle: "Botones",
    title: "Varios botones en Flutter",
    link: "/buttons",
    icon: Icons.smart_button_outlined,
  ),
   MenuItem(
    subTitle: "Tarjetas",
    title: "Un contenedor estilizado",
    link: "/card",
    icon: Icons.credit_card,
  ),
];
