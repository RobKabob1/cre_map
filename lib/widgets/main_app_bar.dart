import 'package:flutter/material.dart';
import '../screens/settings_screen.dart';

class MainAppBar extends StatefulWidget {
  final String title;
  const MainAppBar({
    super.key,
    required this.title,
  });

  @override
  State<MainAppBar> createState() => _MainAppBarState();
}

class _MainAppBarState extends State<MainAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(widget.title),
      backgroundColor: Colors.transparent,
      centerTitle: true,
      actions: widget.title == "Profile & Settings"
          ? []
          : <Widget>[
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingsScreen()),
                  );
                },
                icon: const Icon(Icons.more_vert),
              ),
            ],
    );
  }
}
