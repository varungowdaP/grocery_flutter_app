import 'package:flutter/material.dart';

import '../../../util/constants/colors.dart';

class TSettingmenu extends StatelessWidget {
  const TSettingmenu(
      {super.key,
      required this.icon,
      required this.title,
      required this.subtitle,
      this.traling, this.onTap});

  final IconData icon;
  final String title, subtitle;
  final Widget? traling;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 30,
        color: TColors.pprimary,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge,
      ),
      subtitle: Text(
        subtitle,
        style: Theme.of(context).textTheme.labelMedium,
      ),
      trailing: traling,
      onTap: onTap,
    );
  }
}
