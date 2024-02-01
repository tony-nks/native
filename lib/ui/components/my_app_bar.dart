import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget child;
  final Widget? leading;
  final List<Widget>? actions;

  const MyAppBar({
    super.key,
    required this.child,
    this.leading,
    this.actions,
  });

  @override
  Size get preferredSize => const Size.fromHeight(56.0);

  @override
  AppBar build(BuildContext context) {
    return AppBar(
      title: child,
      leading: leading,
      actions: actions,
    );
  }
}
