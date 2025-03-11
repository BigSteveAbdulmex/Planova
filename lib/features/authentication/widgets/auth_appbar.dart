import 'package:flutter/material.dart';

class AuthAppbar extends StatelessWidget {
  const AuthAppbar({
    super.key,
    this.title,
    this.actions,
    this.leadingIcon,
    this.leadingOnPressed,
    this.showBackArrow = true,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: const Icon(Icons.arrow_back),
      ),
    );
  }
}
