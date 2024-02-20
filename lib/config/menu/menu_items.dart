import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

const appMenuItem = <MenuItem>[
  MenuItem(
      title: 'Botones',
      subTitle: 'Varios Botones en flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Tarjetas',
      subTitle: 'Un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItem(
      title: 'ProgressIndicators',
      subTitle: 'generales y controlados',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItem(
      title: 'SnackBars',
      subTitle: 'Snackbars y dialogos',
      link: '/snackbars',
      icon: Icons.info_outline),
  MenuItem(
      title: 'Animated container',
      subTitle: 'Animaciones y transiciones',
      link: '/animated',
      icon: Icons.animation_outlined),
  MenuItem(
    title: 'Ui Controls',
    subTitle: 'Ui controls',
    link: '/ui-controls',
    icon: Icons.settings,
  ),
  MenuItem(
      title: 'Tutorial',
      subTitle: 'Tutorial inicial',
      link: '/tutorial',
      icon: Icons.supervised_user_circle_outlined)
];
